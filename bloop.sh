#!/bin/bash

echo "What's the name of the new project?"

read name

if [ -n "$name" ]; then
  echo "$name is a fine name!"
else
  echo "You need to enter a name."
  exit 1
fi

echo "What should I use as its template? (The name of the project to copy. Should be in a directory with the name of the project under the working directory.)"

read template

if [ -n "$template" ]; then
  echo "I hope your project lives up to the legacy of $template!"
else
  echo "You need to provide a template."
  exit 1
fi

cp -r $template $name
cd $name
rm -rf .git
rm -rf node_modules
rm -f package-lock.json

find . -type f \( -name '*.html' -o -name '*.js' -o -name '*.md' -o -name '*.json' -o -name 'Makefile' -o -name '*.mk' \) | xargs sed -i "s/$template/$name/g"

git init

# On OS X, the '' is needed by OS X sed, so uncomment this line and comment out
# the above line.
# find . -type f \( -name '*.html' -o -name '*.js' -o -name '*.md' -o -name '*.json' -o -name 'Makefile' \) | xargs sed -i '' "s/$templatename/$name/g"

echo "OK! Here's your new project, $name."

