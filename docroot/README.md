Docroot
---------
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