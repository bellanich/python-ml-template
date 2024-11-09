from pathlib import Path

# -------------------
#  Load all fixtures
# -------------------
_fixtures_dir = Path(__file__).parent / "fixtures"
pytest_plugins = [f"tests.fixtures.{filename.stem}" for filename in _fixtures_dir.glob("*.*")]
