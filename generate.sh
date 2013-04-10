#! /bin/bash

set -x
set -e 

# Get the wiki code and generate the website
####################################################################
if [ ! -d wiki ]; then
    git clone git@github.com:timvideos/getting-started.wiki.git wiki
fi
cd wiki

# Get the latest data
git pull

COMMIT_ID=$(git rev-parse HEAD)

# Run jekyll
jekyll --kramdown

cd ..

# Commit the generated website to gh-pages
####################################################################
if [ ! -d gh-pages ]; then
    git clone git@github.com:timvideos/timvideos.github.io.git gh-pages
fi 
cd gh-pages

# Remove the old content
rm -rf *

# Get back the README.md file
git checkout README.md

# Copy the site into this directory
cp -R ../wiki/_site/* .

git diff
git status

# Make git match the content
git add -A .
git commit -m "Converted $COMMIT_ID"

# Push the change
git push

