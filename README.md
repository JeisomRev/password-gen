# Secure passwords generator

This Bash script generates secure passwords and exports them to a text file. The passwords are generated from a random string.

# How to use

1. Clone this repository.
2. In a terminal, open the path where the script was cloned.
3. Give execute permissions to the script using `chmod +x password-gen.sh`.
4. Execute the script using `./password-gen.sh`.
5. When prompted, enter the user and platform for wich you want to create a password.

# Requeriments

- Bash
- OpenSSL

# Features

1. Generates a secure password using a 16 characters of random text.
2. Create a text file named `password.txt` in the same path where the script was cloned.