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

- **cmi** : Drupal 8 exported configuration.
- **conf** : Contains configurations such as apache virtual hosts.
- **htdocs** : The Drupal directory, the virtual host should point here.
- **logs** : Server logs will be placed here.
- **patches** : Patches applied to core or contrib code that should be reapplied in case of updates.
- **profiles** : Profile configuration
- **scripts** : Project related scripts, including the ones called by jenkins and the update.sh needed to be launched after every deployment (in any environment)
- **sql** : Initial sql snapshot to begin with the project.
- **translations** : Translation script with subfolder for po files.
- **tests** : Javascript tests to be executed with casperjs and phantomjs, Behat tests, etc.


How to install
--------------
####How can I start a new project locally using the Cocomore distribution for D8?

Once that you have cloned this project under your workspace follow the next points for setup your new project using this boilerplate.

 - First you have to configure your drupal settings for your local environment. Just edit the **setup.conf** file under the directory **docroot/conf/local/setup.conf** with the credentials of your database and your database name.
 - Run the setup script: `bash docroot/scripts/setup.sh`
 - Generate an hash_salt code and place it in your settings.php. For example:   `$settings['hash_salt']='9b9ed92ece0dec4ea1d087a3037505186fd995c9';`
 - Configure your vhost for pointing at the directory "docroot/htdocs".
 - Now you have installed your new Drupal site, access to it and start developing your project.

Tasks
-----

- [  ] Update documentation. (Update how to install)
- [  ] Create a main tool for set up a new project, incorporate existing one, update the drupal containers. (Potentially using php as main language, use drush as reference?) (Codename: crush)
- [  ] Define final base drupal8 project structure.
  - [  ] Define docroot behaviour.
  - [  ] Define final directory layout.
  - [  ] Procedure to update Drupal8 core into this project structure and with which tool. (Where core lives?)
  - [  ] Project initialization and installation. (Composer vs Drush make)
  - [  ] Project update. (Using our current set of tools)
- [  ] Integrate with bowline (https://github.com/davenuman/bowline). Adapt current installation script to allow: repository source, project name, composer install, drush make using our Drupal profile.
  - [  ] Add new crush command to bowline set of commands (bowline/bin) that act as an interface with our set of scripts.
  - [  ] Adapt bowline-install.sh to our needs. (Use parameters for project installation)
  - [  ] Create a way to define differents drupal8 containers, one from master, another one from develop, etc...
  - [  ] Define a way to switch to differents database containers.
  - [  ] Define minimal set integration from bowline into crush.
- [  ] Implement new crush task, $ crush project:new <project_name>. Install bowline, obtain project repository content and configure it and start containers group.
- [  ] Implement new crush task, $ crush project:<name>:update. Update the drupal8 instance using our updating tool. (root/scripts/update.sh)
- [  ] Add automatic tests and CI. (https://github.com/integrations/feature/code)
