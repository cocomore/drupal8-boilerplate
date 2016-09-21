Cocomore distribution for D8
============================

Features
--------

* Define a project workflow about how to build, develop and deploy drupal8 based projects.
* Define different configuration for each environment.
* Use docker and docker group to define a set of containers.
* Use a main tool to update drupal8 projects, set the group of containers, define differents branches origin for web servers, etc...
* Hide the complexity of integrated tools, like bowline, drush, our own set of drupal8 tools.

Project structure
-----------------
This is the main directory structure for your Drupal projects. This structure aims to have a common structure for all your drupal projects.

Following your will This are the folders and what belongs to each directory.

- **backups**: Place here any initial sql backup of the project.
- **cmi** : Drupal 8 exported configuration.
- **conf** : Contains configurations such as apache virtual hosts.
- **drush**: Drush config with drushrc.php
- **htdocs** : The Drupal directory, the virtual host should point here.
- **logs** : Server logs will be placed here.
- **patches** : Patches applied to core or contrib code that should be reapplied in case of updates.
- **profiles** : Profile configuration
- **custom_scripts** : Project related scripts, including the ones called by jenkins and the update.sh needed to be launched after every deployment (in any environment)
- **sql** : Initial sql snapshot to begin with the project.
- **secure**: Salt file.
- **translations** : Translation script with subfolder for po files.
- **tests** : Javascript tests to be executed with casperjs and phantomjs, Behat tests, etc.


How to install
--------------
Once that you have cloned this project under your workspace follow the next points for setup your new project using this boilerplate.

 - First you have to configure your drupal settings for your local environment.
   - Edit the **setup.conf** file under the directory **conf/local/setup.conf** with the credentials of your database and your database name.
   - Edit **001_get_content.sh** file under folder **custom_scripts/sync-staging** and edit backups sftp folder, adding user, pass and url.
   - Edit **globals.sh** on folder **custom_scripts/lib** and edit variables **SITE_NAME** and **PROJECT_NAME**.
   - Edit **sync-staging/001_get_content.sh**. This command imports the database from an external source, by ftp. Change **USER** and **PASS** or even the url and expected folder if needed.
 - Run the setup script: `bash scripts/setup.sh`. If you receive any "AlreadyInstalledException" exception, check previous step again.
 - Configure your vhost for pointing at the directory "htdocs". If you use docker, find PROJECT_NAME.conf on that repository and change folder accordingly.
 - Now you have installed your new Drupal site, access to it and start developing your project.

Environment considerations
--------------------------
The list of available environments, and their names are on lib/environment.sh script.

Whenever an environment is created, check all scripts ending in XXX_name.*environment*.sh, and modify urls if needed.

If any environment needs a specific module enabled, we have XXX_modules.sh scripts with commented lines to use.

Also, behat testing is enabled only on environment: "testing". Local, staging and production do not use it. Jenkins usage is encouraged to check tests work.
