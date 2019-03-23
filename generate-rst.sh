#!/bin/bash

MARKDOWN_FOLDER="markdown"

for FILE in $(find $MARKDOWN_FOLDER -name "*.md")
do
FILE_NAME="${FILE/$MARKDOWN_FOLDER\//}"
NEW_NAME="${FILE_NAME/.md/.rst}"
echo "$FILE_NAME -> $NEW_NAME"
pandoc -f markdown -t rst $FILE -s -o $NEW_NAME
done
