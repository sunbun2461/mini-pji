Sure! Here's a step-by-step guide on how to create a database using MySQL on a CentOS virtual machine. You can format it as a README.md file for a beautiful presentation:

# Creating a Database with MySQL on CentOS

This guide will walk you through the process of creating a database using MySQL on a CentOS virtual machine. The steps are divided into two sections: one for the host computer (Mac) and one for the CentOS virtual machine.

## On the Host Computer (Mac):

1. Open Terminal on your Mac.

2. Establish an SSH connection to your CentOS virtual machine:
   ```shell
   ssh <username>@<centos-ip-address>
   ```
   Replace `<username>` with your CentOS username and `<centos-ip-address>` with the IP address of your CentOS virtual machine.

3. Enter your CentOS password when prompted to authenticate.

## On the CentOS Virtual Machine:

4. Once you're connected to the CentOS virtual machine, launch the MySQL command-line client:
   ```shell
   mysql -u root -p
   ```

5. Enter the MySQL root password when prompted.

6. To create a new database, use the following command:
   ```sql
   CREATE DATABASE <database-name>;
   ```
   Replace `<database-name>` with the desired name for your database.

7. Confirm that the database has been created by running the following command:
   ```sql
   SHOW DATABASES;
   ```
   You should see the newly created database in the list.

8. Exit the MySQL command-line client:
   ```sql
   exit;
   ```

## Congratulations!

You have successfully created a database using MySQL on your CentOS virtual machine. You can now proceed to use this database for your application or project.

Feel free to customize the README.md file with additional information, such as prerequisites, troubleshooting tips, or other relevant details.