# 1. Core Project Components

In our README file, we boasted about how we can setup our entire ML project with just these three commands:

1. `copier copy python-ml-template/ your-new-project`
2. `cd your-new-project/`
3. `make`

 This documentation page will cover the main project components that make this make possible.

 ## Contents
- [1. Core Project Components](#1-core-project-components)
  - [Contents](#contents)
  - [1.1 Dynamic Templates](#11-dynamic-templates)
  - [1.2 Makefile](#12-makefile)
  - [1.3 Project Tooling](#13-project-tooling)
  - [Conclusion](#conclusion)

## 1.1 Dynamic Templates

Our Python ML template leverages [Copier](https://copier.readthedocs.io/en/stable/), a Python library and CLI application designed for rendering project templates. When we run our first command (`copier copy python-ml-template/ your-new-project`), we use dynamic templates to:

1. Define our project file structure
2. Define our project's Python environment starter dependencies
3. Create an initial draft for project documentation
4. Optimize our Git and GitHub configurations

See the documentation pages X, Y, and Z for more details.

## 1.2 Makefile

We use a Makefile to automate the tedious parts of project creation. In particular, we use [our Makefile file](../Makefile) to:

1. Build our project's poetry Python environment
2. Setup our [pre-commit hooks](https://pre-commit.com)
3. Initialize our project on GitHub

See this documentation for more details.

## 1.3 Project Tooling

This is a catch-all that covers all the tooling we want to use consistently across our Python ML repositories.

## Conclusion

Subsequent documentation pages will do a deep dive on the project tooling and templates we've selected.

<!-- End of page buttons -->
---

<div align="center">

  <p align="center">
    <a href="0_overview.md" style="text-align: left; margin-right: auto;"> ← Previous Page</a>
    &nbsp;&nbsp;&nbsp;
    ·
    &nbsp;&nbsp;&nbsp;
    <a href="2_dynamic_templating.md" style="text-align: right;">Next Page → </a>
  </p>
</div>

<!-- LINKS -->
