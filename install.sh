#!/usr/bin/env bash

set -euo pipefail

read -rp "GitHub Username: " user
read -rp "Projectname: " projectname

git clone git@github.com:ukiesmack/sandy.git "$projectname"
cd "$projectname"
rm -rf .git
find . -type f -exec sed -i "s/sandy/$projectname/g" {} +
find . -type f -exec sed -i "s/ukiesmack/$user/g" {} +
git init
git add .
git commit -m "initial commit"
git remote add origin "git@github.com:$user/$projectname.git"

echo "template successfully installed."
