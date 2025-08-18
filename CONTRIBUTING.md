# Contributing to jpinfect

Thank you for your interest in contributing to `jpinfect`. We welcome contributions from the community to help improve the project. Here are some guidelines to help you get started:

## Report issues

If you encounter a bug or issue while using the `jpinfect` package, we encourage you to report it. Please follow the steps below to help us resolve the problem efficiently:

1.  **Check Existing Issues**: Before submitting a new bug report, visit the [Issues page]((https://github.com/TomonoriHoshi/jpinfect/issues)) on GitHub to check if the issue has already been reported.

2.  **Submit a New Issue**: If the issue is new, create a detailed report by clicking on the **"New Issue"** button. Include the following information:

    -   A clear description of the issue or unexpected behaviour.

    -   Steps to reproduce the issue, if possible.

    -   Your R version and operating system (e.g., Windows 10, macOS Ventura).

    -   Any relevant error messages or output.

    -   Example code or datasets (if applicable) to demonstrate the problem.

3.  **Follow-Up**: We appreciate your feedback! Once your issue is submitted, we may ask for additional information to resolve it. Please check back periodically for updates.

By contributing bug reports, you help us improve the `jpinfect` package for everyone. Thank you for your support!


## How to Contribute

-   Fork the package and clone onto your computer. Perhaps, you can use the following

    `usethis::create_from_github("TomonoriHoshi/jpinfect", fork = TRUE)`.

-   Make sure to install the required packages by running `devtools::install_deps(dependencies = TRUE)` in the package directory. Then, confirm R CMD check by using `devtools::check()` to ensure that the package is working correctly.

-   If you are adding new features or making significant changes, please create a new branch for your work. Use descriptive names for branches, such as `feature/add-new-functionality` or `bugfix/fix-issue-123`.

-   Write clear and concise commit messages that describe the changes you made. Use the present tense and start with a verb (e.g., "Add", "Fix", "Update").

-   If you are fixing a bug or adding a new feature, please write tests to ensure the functionality works as expected. Use the `testthat` package for writing tests.

-   Before submitting a pull request, make sure to run the package checks using `devtools::check()` to ensure that your changes do not introduce any errors or warnings.

-   Once you are satisfied with your changes, push your branch to your forked repository and create a pull request against the main branch of the original repository.


## Code of Conduct

We expect all contributors to adhere to the [Code of Conduct](CODE_OF_CONDUCT.md) to ensure a welcoming and inclusive environment for everyone.
