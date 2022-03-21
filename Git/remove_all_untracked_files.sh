#!/bin/sh

## usage: ./remove_all_untracked_files.sh
## description: removes untracked files 
## reference: https://www.google.com/search?q=git+reset+hard+and+remove+all+untracked+files&oq=git+reset+hard+and+remove+all+untracked+files&aqs=chrome..69i57j69i64.6323j0j7&sourceid=chrome&ie=UTF-8

git clean -f -d
