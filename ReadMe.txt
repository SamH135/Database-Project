FOR load.sql...

If you encounter Error Code: 3948. Loading local data is disabled; 
this must be enabled on both the client and server sides

You can resolve this issue using the following steps:

1. Enable Local Data Loading on the Client Side:

You can enable local data loading on the client side by adding 
the --local-infile=1 option when starting the MySQL client. For example:

mysql --local-infile=1 -u your_username -p your_password -h your_host your_database
Replace your_username, your_password, your_host, and your_database 
with your actual MySQL connection details.

2. Enable Local Data Loading on the Server Side:

You also need to make sure that local data loading is enabled on the MySQL server side. 
To do this, you need to modify your MySQL server's configuration file 
(my.cnf or my.ini, depending on your operating system) and add or modify the following 
line in the [mysqld] section:

local-infile=1

After making this change, you will need to restart your MySQL server to apply 
the configuration. The specific location of the configuration file may vary depending 
on your operating system and how MySQL was installed. You should consult the official
MySQL documentation for more information about finding it.


NOTE: 

Security Considerations:

Enabling local data loading can pose security risks, as it allows clients to read and 
write files on the server's file system. Be cautious and only enable this feature if 
it's necessary for your specific use case, and make sure to set appropriate file access 
permissions to limit potential security vulnerabilities.

After making these changes, you should be able to load data from local CSV files into
your MySQL tables using the LOAD DATA LOCAL INFILE statement without encountering the 
"Loading local data is disabled" error.
