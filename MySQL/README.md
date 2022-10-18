## Usage
---
Just run the command `./setup_mysql_service.sh` or `./setup_mysql.sh` (For Ubuntu 18 and above)

When asked for the password for root user: This password is needed to complete installation for MySQL 8.*. It would be remove after setup.

When asked for username and password: the user name and password would be used to create a primary user for the MySQL instance with the same authorization as root user.

During the finishing up section of the installation, you would be asked a few question and here are the basic response. You can change any of the response if you understand the question and would like to give a different answer.

```bash

Securing the MySQL server deployment.

Enter password for user root: 

VALIDATE PASSWORD COMPONENT can be used to test passwords
and improve security. It checks the strength of password
and allows the users to set only those passwords which are
secure enough. Would you like to setup VALIDATE PASSWORD component?

Press y|Y for Yes, any other key for No: y

There are three levels of password validation policy:

LOW    Length >= 8
MEDIUM Length >= 8, numeric, mixed case, and special characters
STRONG Length >= 8, numeric, mixed case, special characters and dictionary                  file

Please enter 0 = LOW, 1 = MEDIUM and 2 = STRONG: 0
Using existing password for root.

Estimated strength of the password: 50 
Change the password for root ? ((Press y|Y for Yes, any other key for No) : n

 ... skipping.
By default, a MySQL installation has an anonymous user,
allowing anyone to log into MySQL without having to have
a user account created for them. This is intended only for
testing, and to make the installation go a bit smoother.
You should remove them before moving into a production
environment.

Remove anonymous users? (Press y|Y for Yes, any other key for No) : y
Success.


Normally, root should only be allowed to connect from
'localhost'. This ensures that someone cannot guess at
the root password from the network.

Disallow root login remotely? (Press y|Y for Yes, any other key for No) : y
Success.

By default, MySQL comes with a database named 'test' that
anyone can access. This is also intended only for testing,
and should be removed before moving into a production
environment.


Remove test database and access to it? (Press y|Y for Yes, any other key for No) : y
 - Dropping test database...
Success.

 - Removing privileges on test database...
Success.

Reloading the privilege tables will ensure that all changes
made so far will take effect immediately.

Reload privilege tables now? (Press y|Y for Yes, any other key for No) : y
Success.

All done! 
```

Congrantulations, you have successfully installed and setup MySQL!

Now you have the root user which you can sign into your MySQL instance with using `sudo mysql` without a password

And a primary user which you can sign into MySQL with using `mysql -u[username] -p`. You then provide the password you specified for your primary user on the next prompt.
