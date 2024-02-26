#!/bin/bash

# Define the directory name
directory_name="negpod_25-q1"

# Create the directory if it doesn't exist
mkdir -p "$directory_name"

# Move the files to the specified directory
# Assuming the files are in the current directory and named file1, file2, file3, file4
# Update the file names according to the files you need to move

mv main.sh students-list_1023.txt select-emails.sh student-emails.txt "$directory_name/"
