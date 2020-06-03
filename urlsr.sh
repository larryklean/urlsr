#!/bin/bash

echo "Enter your old url"

read OLD_URL

echo "Enter your new URL"

read NEW_URL

# First 
wp search-replace $OLD_URL $NEW_URL --skip-themes --skip-plugins

wp search-replace http://$NEW_URL https://$NEW_URL --skip-themes --skip-plugins

# Flush WordPress object cache

wp cache flush