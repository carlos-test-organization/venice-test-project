#!/bin/sh

# Bail on errors
set -e

# Puges the output folder
rm -rf public

# Creates the output folder
mkdir public

# Generates the pseudo content
echo '<h1>Hello world</h1>' > public/index.html
