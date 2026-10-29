#!/bin/bash
set -e

chown -R www-data:www-data /var/www/react-aws-cicd
find /var/www/react-aws-cicd -type d -exec chmod 755 {} \;
find /var/www/react-aws-cicd -type f -exec chmod 644 {} \;

nginx -t
