# Environment variables
DIR_NAME := $(shell basename "$(PWD)")

# Define the targets
all: build_conda build_hooks clean gh_repo_setup
.PHONY: all

# Infer conda name from directory (project) name
# Overwrite loose project dependencies with pinned ones
build_conda:
	@echo "Building your '${DIR_NAME}' project..."
	@if conda env list | grep -q "^${DIR_NAME}"; then \
		echo "'${DIR_NAME}' conda environment already exists...skipping..."; \
    else \
		conda config --set channel_priority strict; \
        sed "s/name:.*/name: ${DIR_NAME}/" environment.yml > environment_tmp.yml; \
		mv environment_tmp.yml environment.yml; \
		conda env create -f environment.yml; \
		conda env export --no-builds > environment.yml; \
		echo "Built '${DIR_NAME}' conda environment"; \
    fi

# Using pre-commit framework: https://pre-commit.com/index.html
# Extension of pre-commit framework
build_hooks:
	@echo ""
	@echo "Setting up pre-commit hooks..."
	@export PATH="${CONDA_PREFIX}:${PATH}" && \
	export PATH="${CONDA_PREFIX}/envs/${DIR_NAME}/bin:${PATH}" && \
	CONDA_ENV_NAME=$$(which python | awk -F/ '{print $$(NF-2)}') && \
	if [ "$${CONDA_ENV_NAME}" = "${DIR_NAME}" ]; then \
		echo "✓ Check passed: Correct conda env is in use"; \
	else \
		echo "Wrong conda env is in use...exiting..." && \
		exit 1; \
	fi && \
	if [ ! -d ".git" ]; then \
		echo "...initializing Git..."; \
		git init; \
		git add .; \
	 	git commit -m "Initial commit"; \
	fi && \
	conda install pre-commit && \
	pre-commit install && .git/hooks/pre-commit && \
	chmod +x config/commitlint.sh

# Target to clean up generated files
clean:
	@echo "Cleaning up..."
	@files_to_remove=$$(find docs -type f | grep -v '0_overview.md'); \
	for file in $$files_to_remove; do \
		rm -f $$file; \
    done

# Use the GitHub ClI to automatically push this project to the remote server
# Initialize GitHub repository as private
gh_repo_setup:
	@echo "...pushing to GitHub..."
	@if ! command -v gh >/dev/null 2>&1; then \
      echo "Error: GitHub CLI is not installed. Please install it from https://cli.github.com/"; \
	  echo "Once installed, please run 'gh auth login'"; \
      exit 1; \
    fi
	@if ! gh repo view "${DIR_NAME}" >/dev/null 2>&1; then \
      echo "Creating project on GitHub..."; \
	  gh repo create "${DIR_NAME}" --private; \
	  git remote add origin https://github.com/bellanich/python-ml-template; \
	  git push -u origin main; \
	else \
      echo "Repository called '${DIR_NAME}' already exists...skipping..."; \
    fi
