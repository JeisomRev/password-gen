#!/bin/bash

generate_password() {
    local length=$1
    openssl rand -base64 48 | cut -c1-$length
}

save_password_to_file() {
    local user=$1
    local platform=$2
    local password=$3
    local date=$(date '+%Y-%m-%d %H:%M:%S')
    local file="passwords.txt"
    
    echo "[$date] User: $user, Platform: $platform, Password: $password" >> $file
    echo "Password saved to: $file"
}

# Request information from the user
read -p "Enter the username: " user
read -p "Enter the platform: " platform

length=16
password=$(generate_password $length)
save_password_to_file "$user" "$platform" "$password"