#! /bin/bash

set -e 
set -x

if [ ! -d /tmp/timvideos-website ]; then
    mkdir -p /tmp/timvideos-website
fi
cd /tmp/timvideos-website

# Tell ssh to use the given identity
cat > /tmp/timvideos-website/ssh <<'EOF'
#!/bin/sh
exec ssh -i ~/.ssh/timvideos-website "$@"
EOF
chmod a+x /tmp/timvideos-website/ssh
export GIT_SSH=/tmp/timvideos-website/ssh

# Get the wiki code and generate the website
####################################################################
if [ ! -d wiki ]; then
    git clone git@github.com:timvideos/getting-started.wiki.git wiki
    cd wiki
    git remote add mirror git@github.com:timvideos/getting-started.git
else
    cd wiki
fi

# Get the latest data
git pull
# Push the changes to the front page.
git push mirror --all

COMMIT_ID=$(git rev-parse HEAD)

# Run jekyll
jekyll --kramdown > /dev/null 2>&1

cd ..

# Commit the generated website to gh-pages
####################################################################
if [ ! -d website ]; then
    git clone git@github.com:timvideos/timvideos.github.io.git website
    cd website
else
    cd website
    git pull -q
fi 

# Remove the old content
rm -rf *

# Get back the README.md file
git checkout -q README.md

# Copy the site into this directory
cp -R ../wiki/_site/* .

git status

# Make git match the content
git add -A .
git commit -q -m "Converted https://github.com/timvideos/getting-started/commit/$COMMIT_ID"

# Push the change
git push -q
