# 5. GitHub Streamlined

This page explores the GitHub-specific features embedded within our Python ML project template. In particular, we have included GitHub-specific templates and a foundational CI pipeline definition.

## Contents

- [5. GitHub Streamlined](#5-github-streamlined)
  - [Contents](#contents)
  - [5.1 Templates for Better Collaboration](#51-templates-for-better-collaboration)
  - [5.2 A Foundational CI pipeline](#52-a-foundational-ci-pipeline)
    - [5.2.1 Why PyTest?](#521-why-pytest)
    - [5.2.2 How does it work?](#522-how-does-it-work)
  - [Conclusion](#conclusion)

## 5.1 Templates for Better Collaboration

Writing code is a collaborative process. Thankfully, [our simple GitHub pull request template](../.github/pull_request_template.md) (dynamically defined [here](../.github/pull_request_template.md.jinja)) and issues templates (originally defined [here](https://github.com/stevemao/github-issue-templates/tree/master/.github)) simplify collaboration. These templates make it easier to communicate what needs get done, letting you focus on developing the best ML features possible.

## 5.2 A Foundational CI pipeline

We've made the process of testing your code easy as possible. We've:

* setup a clean and simple file structure for your test code
* written [a sample unit test](../tests/unit/test_example.py) with [PyTest](https://docs.pytest.org/en/8.0.x/)
* defined [a base CI pipeline](../.github/workflows/ci_main.yml) that automatically blocks on the merging of any pull requests with failing test(s)

### 5.2.1 Why PyTest?

We use [PyTest](https://docs.pytest.org/en/8.0.x/), since [it's a popular Python testing framework](https://star-history.com/#pytest/pytest&pytest-dev/pytest&Date) that [minimizes the amount of boilerplate code required](https://builtin.com/data-science/pytest-vs-unittest).

### 5.2.2 How does it work?

Our sample test — and all other tests written in the `tests/` directory — are integrated with [our base CI pipeline](../.github/workflows/ci_main.yml). This pipeline will test your code whenever a new pull requests (PR) is published. [You can configure your GitHub project settings so that your PR merge is blocked when the CI pipeline fails.](https://github.blog/2015-09-03-protected-branches-and-required-status-checks/). To customize our base CI pipeline, simply add new jobs to [the .github/workflows/ci_main.yml file](../.github/workflows/ci_main.yml). Refer to [the official GitHub Workflows documentation for syntax](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions) and [more](https://docs.github.com/en/actions).

## Conclusion

We've implemented some GitHub-specific features in this template repository. Our PR and issues templates streamline the process of collaboration. Meanwhile,  our automated testing setup makes it as easy to embrace a [test driven development](https://www.guru99.com/test-driven-development.html) approach to ML product development. While our GitHub Workflow is (by nature) GitHub specific, our local testing setup applies to any Git remote hosting service.

<!-- End of page buttons -->
---

<div align="center">

  <p align="center">
    <a href="4_git_simplified.md" style="text-align: left; margin-right: auto;"> ← Previous Page</a>
    &nbsp;&nbsp;&nbsp;
    ·
    &nbsp;&nbsp;&nbsp;
    Next Page →
  </p>
</div>
