# 3. Python Virtual Environment Template

There are some Python packages that we always find ourselves downloading. In order to speed up our project setup, we've created [a "base" Conda environment definition](../environment.yml).

## Contents
- [3. Python Virtual Environment Template](#3-python-virtual-environment-template)
  - [Contents](#contents)
  - [3.1 Why use Conda?](#31-why-use-conda)
  - [3.2 Loose vs. Pinned Dependencies](#32-loose-vs-pinned-dependencies)
  - [3.3 Updating Base Environment Definition](#33-updating-base-environment-definition)
  - [Conclusion](#conclusion)


## 3.1 Why use Conda?

In the initial development of a ML project, rapid product iteration is critical for validating a business idea. Hence, we've selected [Conda](https://docs.conda.io/en/latest/) as our Python package management of choice due to its ease of use.

As project system grows in complexity, we advise switching to a more granular dependency management system (like [Poetry](https://python-poetry.org)) to better manage different types of dependencies and for more comprehensive [dependency locking](https://docs.gradle.org/current/userguide/dependency_locking.html).

## 3.2 Loose vs. Pinned Dependencies

In our base [`environment.yml` file][src-environment.yml], we have maintained flexibility in our Python dependencies. This guarantees that Conda can install the most up-to-date package versions when initializing a project, preventing our core dependencies from becoming deprecated over time.

However, it is crucial for Python dependencies to be reproducible. In other words, the project built from our template needs to have pinned Python dependencies. To achieve this, we automatically recreate a environment.yml file with pinned dependencies in our [Makefile][src-code-Makefile] using this command:

```bash
conda env export --no-builds > environment.yml
```

## 3.3 Updating Base Environment Definition

If you want to modify the dependencies of your base Python environment, then just follow these steps:

1. Activate your base conda environment (`conda activate python-ml-template `)
2. [Add (or remove) the loose dependencies using conda](https://docs.conda.io/projects/conda/en/4.6.0/_downloads/52a95608c49671267e40c689e0bc00ca/conda-cheatsheet.pdf)
3. Rebuild your conda environment definition file **in this Python ML template project repository**

    ```bash
    conda env update -f environment.yml --prune
    ```

## Conclusion

In the past, we have found ourselves consistently re-installing Python packages like `isort` or `pytest` to our project's Python environment. To expedite this process, we've created a base Conda environment definition. Our Makefile automates the process of converting this list of project dependencies into a fully-functional and ready-to-go Python environment. As a result, we can spend less on project setup and more time on ML feature development.

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
