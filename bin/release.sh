#!/usr/bin/env bash

set -e
# Build
rm -rdf vendor
php composer.phar install --no-dev

# Bundle
rm -f /tmp/c3-cloudfront-clear-cache-custom.zip
rm -rdf /tmp/c3-cloudfront-clear-cache-custom
mkdir /tmp/c3-cloudfront-clear-cache-custom
cp -r classes templates vendor c3-cloudfront-clear-cache.php composer.json loader.php package.json readme.txt uninstall.php /tmp/c3-cloudfront-clear-cache-custom
cd /tmp
zip -r /tmp/c3-cloudfront-clear-cache-custom.zip ./c3-cloudfront-clear-cache-custom
