# Exercise 7 - Use Packages

A lot of dbt users have already created packages. You can leverage these packages to extend the functionality of your own dbt project without reinventing the wheel.




## Goal
Learn how to use and manage dbt packages within your project.

## Timebox
25 minutes

## Starting Point
- Existing dbt project with models and macros available for edits

## Instructions
1. Create a `packages.yml` file if it doesn't already exist in the root of your dbt project.
2. Add the `dbt-utils`  package to your `packages.yml` file.
3. Run `dbt deps` to install the package.
4. Use the one of the macros or tests from this package in your project.
5. Test your changes to ensure everything works as expected.


