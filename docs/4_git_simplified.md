# 4. Version Control Simplified

We use templates to optimize Git for Python project applications. In particular, we: **(a)** configure [Git pre-commit hooks](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks) to ensure better quality controls and **(b)** pre-configured Git's project-level settings to improve Git's performance.

## Contents

- [4. Version Control Simplified](#4-version-control-simplified)
  - [Contents](#contents)
  - [4.1 Streamlined Git Hooks](#41-streamlined-git-hooks)
    - [4.1.1. Why use pre-commit?](#411-why-use-pre-commit)
    - [4.1.2. Quick Start](#412-quick-start)
    - [2.1.3. Adding in Custom Pre-Commit Hooks](#213-adding-in-custom-pre-commit-hooks)
  - [2.2 Optimize Git Performance](#22-optimize-git-performance)
  - [Conclusion](#conclusion)


## 4.1 Streamlined Git Hooks

We use [the pre-commit framework](https://pre-commit.com) to create standardized pre-commit hooks. Please refer to the [`.pre-commit-config.yaml` file](.pre-commit-config.yaml) to see the exact list of pre-commit actions used.

### 4.1.1. Why use pre-commit?

Pre-commit offers several benefits over other pre-commit alternatives:

1. Unlike classical Git hooks (found in your `.git/hooks` directory), pre-commit configurations are meant to be version controlled. Meaning, every project contributor is using the same set of pre-commit actions. Ultimately, this **standardizes code quality**.
2. Unlike other popular pre-commit frameworks, pre-commit is **written in Python**. Meaning, for Python-based projects, it simply becomes a development level project dependency.
   * This makes pre-commit more attractive than non-Python based alternatives like [Husky](https://typicode.github.io/husky/).

### 4.1.2. Quick Start

Here are the "need-to-know" commands for using pre-commit:

* Run pre-commit **without** git committing with `pre-commit run`
* Remove an unwanted pre-commit hook
   1. Remove its reference from the [`.pre-commit-config.yaml` file](.pre-commit-config.yaml)
   2. Run `pre-commit install`
* Add a **natively** supported pre-commit hook
   1. Refer to [the list of Git hooks natively supported by pre-commit](https://pre-commit.com/hooks.html)
   2. Add the desired pre-commit hook to the [`.pre-commit-config.yaml` file](.pre-commit-config.yaml)
   3. Run `pre-commit install`

Check out [the official pre-commit documentation](https://pre-commit.com/#usage) for more details.

### 4.1.3. Adding in Custom Pre-Commit Hooks

While the pre-commit framework does natively support [its own implementation of commitlint](https://github.com/alessandrojcm/commitlint-pre-commit-hook). It is nowhere near as popular or widely used as [the javascript-based commitlint library](https://commitlint.js.org/#/). Therefore, we chose to use its application to illustrate how to integrate a custom pre-commit action into the pre-commit framework.

Simply put, there are two steps you need to take:

1. **Save your custom action(s) as a bash script.** In the `config` directory, we created [a simple bash script](../config/commitlint.sh) that extracts the latest Git commit message and applies commitlint to it.
2. **Update the `.pre-commit-config.yaml` file.** Include a `local` repository reference with the hook details shown below.

    ```yaml
    - repo: local
      hooks:
        - id: commitlint  # Hook's unique identifier
          name: Conventional Commits Linting  # Details named
          entry: ./config/commitlint.sh  # Path to your bash script
          language: system  # Use bash
          pass_filenames: false  # Don't apply to a specific file
    ```

Between our practical example and [pre-commit's official documentation](https://pre-commit.com/#new-hooks), you can confidently include custom hooks in your pre-commit workflow.

## 4.2 Optimize Git Performance

This template uses [GitHub's official Python .gitignore template](https://github.com/github/gitignore/blob/main/Python.gitignore) to prevent unwanted files from reaching your remote repository. All the while, we've aggregated [these .gitattributes templates](https://github.com/gitattributes/gitattributes) to improve Git performance and keep your project clean and lean.

## Conclusion

These out of the box configurations simplify your version control experience. If you want to learn more about advanced Git usage, checkout [this Git Cheatsheet](https://github.com/bellanich/git-cheatsheet).


<!-- End of page buttons -->
---

<div align="center">

  <p align="center">
    <a href="3_python_env_definition.md" style="text-align: left; margin-right: auto;"> ← Previous Page</a>
    &nbsp;&nbsp;&nbsp;
    ·
    &nbsp;&nbsp;&nbsp;
    <a href="5_github_streamlined.md" style="text-align: right;">Next Page → </a>
  </p>
</div>
