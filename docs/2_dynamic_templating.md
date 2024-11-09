# 2. Templating Magic

Our Python ML template leverages [Copier](https://copier.readthedocs.io/en/stable/), a Python library and CLI application designed for rendering project templates. Through Copier, we've introduced an optimized project structure and streamlined documentation creation.

<!-- 1-2 intro sentences. Table of contents: -->

## Contents

- [2. Templating Magic](#2-templating-magic)
  - [Contents](#contents)
  - [2.1 Clean Project Structure](#21-clean-project-structure)
  - [2.2 Streamlined Documentation](#22-streamlined-documentation)
  - [Conclusion](#conclusion)


## 2.1 Clean Project Structure

We use project scaffolding to standardize our Python projects file structure, which makes software maintenance easier. To customize this template's file structure, simply:

1. Make your adjustments locally
2. Let Copier do the heavy lifting (`copier copy python-ml-template/ your-new-project/`)

Please note that all files with the `.jinja` extension are dynamically defined templates. Thus, they will not be copied over into your newly created Python project.

## 2.2 Streamlined Documentation

We used Copier's dynamic templating capabilities to make writing superb documentation easier. Simply put, we use dynamically defined markdown templates to generate the first draft of your documentation. For example, we parametrized [this visually appealing README template](https://github.com/othneildrew/Best-README-Template) to minimize the amount of time you spend filling out basic project details and contact information.

If you want to extend or modify the markdown templates used, then:

1. Update (or add) the variable key-value pairs in [the `copier.yml` file](../copier.yml) file
2. Modify the (or create a) templated version of your file
   * Add a `.jinja` extension to your filename
   * Use the [jinja2 language](https://palletsprojects.com/p/jinja/) markdown templates to reference the variables in [the `copier.yml` file](../copier.yml) file


While we used dynamic templating on markdown files, this **same approach can be applied to most other file types**. See [the official Copier documentation](https://copier.readthedocs.io/en/stable/creating/#template-helpers) for more details.


## Conclusion

In summary, there are many levels of templating used in this project. We template the file structure and markdown (documentation) files. In the next section, we'll go into further details about our "base" Python virtual environment definition.

<!-- End of page buttons -->
---

<div align="center">

  <p align="center">
    <a href="1_core_components.md" style="text-align: left; margin-right: auto;"> ← Previous Page</a>
    &nbsp;&nbsp;&nbsp;
    ·
    &nbsp;&nbsp;&nbsp;
    <a href="3_python_env_definition.md" style="text-align: right;">Next Page → </a>
  </p>
</div>

<!-- LINKS -->
[src-code-Makefile]: ../Makefile
[src-environment.yml]: ../environment.yml
