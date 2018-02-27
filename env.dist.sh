# Allows you to use site specific versions of tools inside bin/
#
# To run this file source it into your PATH
#   -  source env.dist.sh
# If this doesn't match your current settings clone this file to env.sh
# and make your changes there. 

# Get path to self.
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

export PROJECT_DIR="$DIR"
export SITE_NAME="default"

## Migration env settings (optional)

####################################################

echo "Initializing some commandline preferences for this project."
export WEBROOT="$PROJECT_DIR/web"
export SITE="$WEBROOT#$SITE_NAME"
echo "PROJECTPATH is $PROJECT_DIR";
echo "SITE is $SITE";

# Make LOCAL bin override the global ones
# - for the right versions of drush and drupal cli tools.
export PATH="$PROJECT_DIR/bin:$PATH";
echo "CLI tools are being loaded from $PROJECT_DIR/bin";

drush site-set "$SITE"
drush status

