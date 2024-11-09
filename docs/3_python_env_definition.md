# 3. Python Virtual Environment Template

There are some Python packages that we always find ourselves downloading. In order to speed up our project setup, we've created [a "base" Python virtual environment  definition](../pyproject.toml).

## Contents
- [3. Python Virtual Environment Template](#3-python-virtual-environment-template)
  - [Contents](#contents)
  - [3.1 Why use Poetry?](#31-why-use-poetry)
  - [Conclusion](#conclusion)


## 3.1 Why use Poetry?

[Poetry](https://python-poetry.org) manages Python dependencies,code packaging, and virtual environments in a single solution. With its user-friendly commandline interface, Poetry offers the following benefits:

* Follows modern Python packaging standards by fully supporting `pyproject.toml`
* Reproducible dependency resolution with its version locking (via `poetry.lock`)
* Automated virtual environment creation
* Seamless integration with popular CI platforms (e.g., GitHub Actions) and containerization tools (e.g., Docker)

In summary, we’ve selected Poetry for its versatility, ease of use, and compatibility with other popular ML/software tools.

## Conclusion

In the past, we have found ourselves consistently re-installing Python packages like `isort` or `pytest` for each new project. To expedite this process, we've defined our base Python packages in the [`pyproject.toml.jinja template` file](../pyproject.toml.jinja). Our Makefile then automates the Poetry virtual environment setup. Thus, we can spend less time on project setup and more time on ML feature development.

<!-- End of page buttons -->
---

<div align="center">

  <p align="center">
    <a href="2_dynamic_templating.md" style="text-align: left; margin-right: auto;"> ← Previous Page</a>
    &nbsp;&nbsp;&nbsp;
    ·
    &nbsp;&nbsp;&nbsp;
    <a href="4_git_simplified.md" style="text-align: right;">Next Page → </a>
  </p>
</div>

<!-- LINKS -->
[src-code-Makefile]: ../Makefile
[src-environment.yml]: ../environment.yml
