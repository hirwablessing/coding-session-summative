# Student Registration System

The Student Registration System is a simple shell script-based application designed to manage student records. It allows for creating, viewing, updating, and deleting student records, as well as extracting and sorting student emails. This application is intended for use in academic settings where managing a list of student details is required.

## Installation

To install the Student Registration System, follow these steps:

1. **Clone the repository or download the source code**

   If using Git, clone the repository to your local machine:

   ```bash
   git clone https://github.com/hirwablessing/coding-session-summative
   cd coding-session-summative
   ```

   Alternatively, download the source code as a ZIP file and extract it to your desired location.

2. **Set execution permissions**

   Before running the application, you need to set execution permissions for the scripts:

   ```bash
   chmod +x main.sh select-emails.sh
   ```

## Installing required packages
The `rsync` and `sshpass` commands are not available on your system by default. You will need to install them first before running backup-Negpod_25.sh

```bash
sudo apt update
```

```bash
sudo apt install rsync
```

```bash
sudo apt install sshpass
```

## Running the Application

To run the Student Registration System, execute the `main.sh` script from the terminal:

```bash
./main.sh
```

Follow the on-screen prompts to perform various operations such as creating a student record, viewing all records, updating or deleting a record, and exiting the application.

To extract and sort student emails, run the `select-emails.sh` script:

```bash
./select-emails.sh
```

This will generate or update the `student-emails.txt` file with sorted email addresses from the student records.

You can choose any option from the app menu to play around with the app.

## Features

- **Create Student Record**: Add new student details including email, age, and student ID.
- **View All Student Records**: Display a list of all student records.
- **Update Student Record**: Modify existing student details using their student ID.
- **Delete Student Record**: Remove a student record from the list using their student ID.
- **Extract and Sort Emails**: Generate a list of student emails, sorted alphabetically.

## Contributors (Negpod 25)

- Hammed Agbaje
- Aubert Bihibindi
- Blessing Hirwa
- Nicole Mukundwa
- Patrick Niyogitare
- Kerie Izere 

## Contributing

Contributions to the Student Registration System are welcome! To contribute:

1. Fork the repository.
2. Create a new branch for your feature (`git checkout -b feature/AmazingFeature`).
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`).
4. Push to the branch (`git push origin feature/AmazingFeature`).
5. Open a Pull Request.

## License

This project is licensed under the [MIT License](LICENSE.txt) - see the LICENSE file for details.

---
