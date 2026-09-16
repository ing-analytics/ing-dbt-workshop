# Exercise 7 - Use Packages

A lot of dbt users have already created packages. You can leverage these packages to extend the functionality of your own dbt project without reinventing the wheel.
It is also possible to create reusable packages for your ING colleagues to use.

dbt docs for packages can be found [here](https://docs.getdbt.com/docs/build/packages?version=1)

## Goal
Learn how to use and manage dbt packages within your project.

## Timebox 10 minutes

## Starting Point
- Existing dbt project with models and macros available for edits

## Instructions
1. Create a `packages.yml` file if it doesn't already exist in the root of your dbt project.
2. Add the `dbt-utils`  package to your `packages.yml` file.
3. Run `dbt deps` to install the package.
4. Use the one of the macros or tests from this package in your project. For instance, you could use the `dbt_utils.expression_is_true` test to validate expressions in your models.
5. Test your changes to ensure everything works as expected.


## Expected Artifacts
- `packages.yml` file with `dbt-utils` listed as a dependency
- Installed package in the `dbt_modules/` directory
- Usage of at least one macro or test from the `dbt-utils` package in your project
