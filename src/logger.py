import logging
import os
from logging import FileHandler, StreamHandler


def initialize_logs(log_filepath: str, reset_logs: bool) -> None:
    """Initialize log directory if needed. Includes deletion of
    old log files.

    Args:
        log_filepath (str): filepath of log file
        reset_logs (bool): Do you want to reset (delete) old log file?
    """
    if log_dirname := os.path.dirname(log_filepath):
        os.makedirs(log_dirname, exist_ok=True)
    if os.path.exists(log_filepath) and reset_logs:
        os.remove(log_filepath)


def setup_logger(
    log_filepath: str = "outputs/app.log",
    level: int = logging.INFO,
    reset_logs: bool = True,
) -> logging.Logger:
    initialize_logs(log_filepath, reset_logs=reset_logs)

    logger = logging.getLogger(__name__)
    logger.setLevel(level)
    formatter = logging.Formatter("%(asctime)s - %(levelname)s - %(message)s")

    # Setup log handlers for stream + file
    handlers: list[logging.Handler] = [
        StreamHandler(),
        FileHandler(filename=log_filepath),
    ]
    for handler in handlers:
        handler.setLevel(level)
        handler.setFormatter(formatter)
    # Remove existing handlers to avoid duplicate log entries
    logger.handlers = handlers
    return logger


logger = setup_logger()
