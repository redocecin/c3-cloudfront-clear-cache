#!/usr/bin/env bash

set -e
rm -f /tmp/c3-cloudfront-clear-cache.zip
cd ..
zip -r /tmp/c3-cloudfront-clear-cache.zip ./c3-cloudfront-clear-cache -x "c3-cloudfront-clear-cache/.git/*" "c3-cloudfront-clear-cache/.github/*" "c3-cloudfront-clear-cache/node_modules/*" "c3-cloudfront-clear-cache/vendor/*" "c3-cloudfront-clear-cache/.distignore" "c3-cloudfront-clear-cache/.editorconfig" "c3-cloudfront-clear-cache/.phpcs.xml.dist" "c3-cloudfront-clear-cache/.wp-env.json" "c3-cloudfront-clear-cache/phpunix.xml" "c3-cloudfront-clear-cache/tests/*" "c3-cloudfront-clear-cache/renovate.json"
