#!/bin/bash

FILE_NAME="students-list_1023.txt"

# function to display the app menu
# author: @hirwablessing
display_menu() {
  echo "1. Create Student Record"
  echo "2. View All Student Records"
  echo "3. Delete Student Record"
  echo "4. Update Student Record"
  echo "5. Exit"
  read -p "Choose an option: " option
  
   case $option in
    1) create_record;;
    2) view_records;;
    3) delete_record;;
    4) update_record;;
    5) exit 0;;
    *) echo "Invalid option. Please try again."; display_menu;;
  esac
}

#function will create a new student record
# author: @patrickniyogitare28
create_record() {
  read -p "Enter student email: " email
  read -p "Enter student age: " age
  read -p "Enter student ID: " student_id
  echo "$student_id,$email,$age" >> $FILE_NAME
  echo "Student record created."
  display_menu
}

# function to delete student record
delete_record() {
  read -p "Enter student ID to delete: " student_id
  grep -v "^$student_id," $FILE_NAME > temp.txt && mv temp.txt $FILE_NAME
  echo "Record deleted."
  display_menu
}

# function to update student record
update_record(){
    read -p "Enter student ID to update: " student_id
    # Check if the student record exists
      if grep -q "^$student_id," $FILE_NAME; then
        # Temporarily store records excluding the one to update
        grep -v "^$student_id," $FILE_NAME > temp.txt
        mv temp.txt $FILE_NAME # Replace the original file with the temp file
        # Get new details and append them
        read -p "Enter new student email: " email
        read -p "Enter new student age: " age
        echo "$student_id,$email,$age" >> $FILE_NAME
        echo "Record updated."
      else
        echo "Student ID not found."
      fi
      display_menu

} 

# function to view all students records
view_records() {
  if [ -f $FILE_NAME ]; then
    echo "Student ID, Email, Age"
    cat $FILE_NAME
  else
    echo "No records found."
  fi
  display_menu
}
display_menu
