#!/usr/bin/env bash
# Setup mysql server instance in my ubuntu server
echo "Welcom to MySQL Setup!"
echo "Running apt update"

sudo apt update &&

echo "Installing mysql-server" &&
sudo apt install mysql-server -y &&

echo "Making sure MySQL is running" &&
sudo service mysql start &&

echo "Changing root to have a password" &&
read -er -p "Please provide a password for user 'root': " ROOT_PWD &&
read -er -p "Please provide a username for your user: " USER_NAME &&
read -er -p "Please provide a password for your user: " USER_PWD &&

echo "ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '$ROOT_PWD'" | sudo mysql &&

echo "Finishing up the installation process" &&
sudo mysql_secure_installation &&

echo "Creating user $USER_NAME" &&
echo "CREATE USER '$USER_NAME'@'localhost' IDENTIFIED BY '$USER_PWD'" | mysql -uroot -p"$ROOT_PWD" &&

echo "Granting new user some priviledges" &&
echo "GRANT ALL PRIVILEGES ON *.* TO '$USER_NAME'@'localhost' WITH GRANT OPTION; FLUSH PRIVILEGES;" | mysql -uroot -p"$ROOT_PWD" &&

echo "Making sure MySQL is running" &&
sudo service mysql start &&
service mysql status &&

echo "Removing password for user root" &&
echo "ALTER USER 'root'@'localhost' IDENTIFIED WITH auth_socket;" | mysql -uroot -p"$ROOT_PWD"
