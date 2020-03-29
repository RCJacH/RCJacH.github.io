#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

branch=$(git rev-parse --abbrev-ref HEAD)
msg="Publish: $branch - `date`"

echo -e "$msg"

# Build the project.
hugo --minify # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
cd public
# Add changes to git.
git add .

# Commit changes.
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back up to the Project Root
cd ..
