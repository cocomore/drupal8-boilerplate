#!/bin/bash
# --------------------------
# OTHER ACTIONS.
# --------------------------

# --------------------------
# SET PERMISSIONS.
# --------------------------

# Give search permissions to anonymous users.
# drush $DRUSH_PARAMS php-eval "user_role_grant_permissions(DRUPAL_ANONYMOUS_RID, array('search content'));"
# drush $DRUSH_PARAMS cron
