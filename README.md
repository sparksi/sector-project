# Sector's Composer Project Template

[Sector](https://www.sector.org.nz/) is a Drupal 9 distribution (or install profile) built and maintained by [Sparks Interactive](https://www.sparksinteractive.co.nz).

## Installation

This repository is for inclusion as part of a `composer create-project` installation only.

Complete installation instructions are available at the main Sector repository: https://github.com/sparksi/sector-distribution.

### Quick Start

Composer will create a new directory called `{project-name}` containing a `web` directory with a complete Drupal 9 codebase and the Sector install profile.

    composer create-project sparksinteractive/sector-project {project-name}

## What Does This Template Do?

When installing the given `composer.json` some tasks are taken care of:

* Drupal core will be installed in the `web/core` directory.
* Modules (packages of type `drupal-module`), themes (packages of type `drupal-theme`), and profiles (packages of type `drupal-profile`) are automatically installed to their respective `web/(modules|themes|profiles)/contrib` directories.
* Downloads Drupal scaffold files such as `index.php` and `.htaccess` in the `web` directory.
* The latest version of Drush is installed locally for use at `./vendor/bin/drush`.

For a better idea as to what Sector does, what features it has, and why you should use it, visit the [main repository](https://github.com/sparksi/sector-distribution).

## Need Help or Found a Bug?

If you have any queries or issues about how to use Sector, and you've already read through the [Sector Distribution README](https://github.com/sparksi/sector-distribution/blob/master/README.md), then open an issue here or on our [drupal.org project page](https://www.drupal.org/project/sector).

## Contributing to this repository

This repository is a component used with `composer create-project` to build a Sector site. Propose changes via the [issue queue on Drupal.org](https://www.drupal.org/project/issues/sector).

To test building a Sector site via `composer create-project` using your modified version of this repository, follow these steps:

* Clone this repository locally and make your proposed modifications.
* Create a `repo.json` with the following content, replacing the curly braced values with appropriate ones:
  ```json
  {
    "package": {
      "name": "sparksinteractive/sector-project",
      "version": "{version}",
      "source": {
        "url": "/{path-to}/sector-project/.git",
        "type": "git",
        "reference": "{your-branch}"
      }
    }
  }
  ```
* Use `composer create-project sparksinteractive/sector-project --repository-url <path-to>/repo.json <destination>` to build your project.
* When ready, use the Drupal.org issue queue to collaborate on the proposal with a pull request to [sparksi/sector-project](https://github.com/sparksi/sector-project) on Github for the changes themselves.
