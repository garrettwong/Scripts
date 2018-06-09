#!/bin/bash

filename=$1
text_to_find=$2
text_to_replace=$3
newfilename=$4


display_usage() {
    cat << EOF
Usage: bash sed_replace_text_in_file {filename} {text_to_find} {text_to_replace} {newfilename} 
EOF
}

# process command line arguments
if [ "$1" == "-h" ] || [ "$1" == "--help" ]; then
  display_usage
  exit 0
fi

echo $filename $text_to_find $text_to_replace

echo "sed 's/$text_to_find/$text_to_replace/g'"
sed_args="s/$text_to_find/$text_to_replace/g"
echo $sed_args

# run command
(cat $filename | sed $sed_args > $newfilename)
