#!/bin/bash

awk -F ',' '{print $2}' students-list_1023.txt | sort > student-emails.txt
