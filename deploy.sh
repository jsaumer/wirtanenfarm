#!/bin/bash
# Build the site and deploy it to the nginx web root.
set -e
cd "$(dirname "$0")"
hugo
sudo rsync -a --delete public/ /var/www/wirtanenfarm-static/
sudo chown -R www-data:www-data /var/www/wirtanenfarm-static
echo "Deployed. Preview: http://192.168.1.24:8081"

# Back up to GitHub (committed changes only)
git push origin master && echo "Backed up to GitHub."
