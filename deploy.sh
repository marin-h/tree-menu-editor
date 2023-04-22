#!/usr/bin/env sh
# abort on errors
set -e

# build
npm run prod-build

# navigate into the build output directory
cd dist
rm -rf .git
git init
git add -A
git commit -m 'deploy'
git push -f git@github.com:marin-h/tree-menu-editor.git master:gh-pages
cd -