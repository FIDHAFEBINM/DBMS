mysql: [Warning] C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe: ignoring option '--no-beep' due to invalid value ''.
Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 11
Server version: 8.0.19 MySQL Community Server - GPL

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use database EMPLOYEE;
ERROR 1049 (42000): Unknown database 'database'
mysql> use EMPLOYEE;
Database changed
mysql> select * from EMPLOYEE;
+------+--------+------------+-------------------+-------------------+----------+
| SSN  | Name   | Dept       | ProjectName       | ProjectLocation   | Salary   |
+------+--------+------------+-------------------+-------------------+----------+
| CAB0 | Raniya | HR         | Developing        | Kozhikode         | 10000.98 |
| CAB1 | Fidha  | HR         | Meeting           | Thiruvanandapuram | 10000.00 |
| CAB2 | Hadiya | Production | Makeup            | Thiruvanandapuram | 50000.00 |
| CAB3 | Hasna  | Production | Dress             | Kozhikode         | 50000.00 |
| CAB4 | Hasna  | Finance    | Accounts          | Thrissure         | 60000.00 |
| CAB5 | Kavya  | Finance    | CA                | Delhi             | 60000.67 |
| CAB6 | Lubna  | Marketting | Sales             | Kozhikode         | 70000.67 |
| CAB7 | Lubina | Marketting | Advertisement     | Kollam            | 70000.00 |
| CAB8 | Lubina | Marketting | Banking           | Kochi             | 80000.00 |
| CAB9 | Nafiya | Finance    | Financial service | Kochi             | 60000.00 |
+------+--------+------------+-------------------+-------------------+----------+
10 rows in set (0.10 sec)

mysql> select * from DEPARTMENT;
+------+------------+-----------+
| DID  | DNAME      | DLOCATION |
+------+------------+-----------+
| C01  | HR         | DELHI     |
| C02  | FINANCE    | DELHI     |
| C03  | FINANCE    | DELHI     |
| C04  | HR         | MUMBAI    |
| C05  | HR         | MUMBAI    |
| C06  | MARKETTING | MUMBAI    |
| C07  | MARKETTING | DELHI     |
| C08  | PRODUCTION | DELHI     |
| C09  | PRODUCTION | MUMBAI    |
| C010 | PRODUCTION | KOCHI     |
+------+------------+-----------+
10 rows in set (0.00 sec)

mysql> show table;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| awh                |
| db                 |
| employee           |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sample             |
| samples            |
| sys                |
+--------------------+
10 rows in set (0.12 sec)

mysql> show tables;
+--------------------+
| Tables_in_employee |
+--------------------+
| department         |
| employee           |
+--------------------+
2 rows in set (0.08 sec)

mysql> create table ORDER(orderid varchar(10),ordername varchar(30),costumerid varchar(10),costumername varchar(30),oredrdate date);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ORDER(orderid varchar(10),ordername varchar(30),costumerid varchar(10),costumern' at line 1
mysql> create table ORDER(orderid varchar(10),ordername varchar(30),costumerid varchar(10),costumername varchar(30),oredrdate date);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ORDER(orderid varchar(10),ordername varchar(30),costumerid varchar(10),costumern' at line 1
mysql> create table ORDERS(orderid varchar(10),ordername varchar(30),costumerid varchar(10),costumername varchar(30),oredrdate date);
Query OK, 0 rows affected (1.08 sec)

mysql> insert into ORDERS values("CAD1","RANIYA","AB1","HADIYA",2022-03-05);
ERROR 1292 (22007): Incorrect date value: '2014' for column 'oredrdate' at row 1
mysql> insert into ORDERS values("CAD1","RANIYA","AB1","HADIYA","2023-05-05);
    "> "
    -> insert into ORDERS values("CAD1","RANIYA","AB1","HADIYA","2023-05-05");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'insert into ORDERS values("CAD1","RANIYA","AB1","HADIYA","2023-05-05")' at line 3
mysql> insert into ORDERS values("CAD1","RANIYA","AB1","HADIYA","2023-05-05");
Query OK, 1 row affected (0.06 sec)

mysql> insert into ORDERS values("CAD2","POWDER","AB2","HASNA","2023-05-05");
Query OK, 1 row affected (0.17 sec)

mysql> insert into ORDERS values("CAD3","POWDER","AB3","HASNA","2023-05-05");
Query OK, 1 row affected (0.04 sec)

mysql> insert into ORDERS values("CAD4","POWDER","AB4","RANIYA","2023-05-05");
Query OK, 1 row affected (0.07 sec)

mysql> insert into ORDERS values("CAD5","SUNSCREEN","AB5","RANIYA","2023-05-05");
Query OK, 1 row affected (0.04 sec)

mysql> insert into ORDERS values("CAD6","SUNSCREEN","AB6","FIDHA","2023-05-05");
Query OK, 1 row affected (0.10 sec)

mysql> insert into ORDERS values("CAD7","BAG","AB7","FIDHA","2023-05-05");
Query OK, 1 row affected (0.06 sec)

mysql> insert into ORDERS values("CAD8","BAG","AB8","FIDHA","2023-05-05");
Query OK, 1 row affected (0.07 sec)

mysql> insert into ORDERS values("CAD9","MOISTURIZER","AB9","NISHATH","2023-05-05");
Query OK, 1 row affected (0.04 sec)

mysql> insert into ORDERS values("CAD10","MOISTURIZER","AB10","HADIYA","2023-05-05");
Query OK, 1 row affected (0.04 sec)

mysql> create table PRIDUCTS(PRODUCTID varchar(10),PRODUCTNAME varchar(30),ORDERID VARCHAR(10));
Query OK, 0 rows affected (0.38 sec)

mysql> insert into PRIDECTS values("CAD10","MOISTURIZER","AB10","HADIYA","2023-05-05");
ERROR 1146 (42S02): Table 'employee.pridects' doesn't exist
mysql> DROP TABLE PRIDECTS;
ERROR 1051 (42S02): Unknown table 'employee.pridects'
mysql> DROP TABLE PRIDUCTS;
Query OK, 0 rows affected (0.39 sec)

mysql> create table PRODUCTS(PRODUCTID varchar(10),PRODUCTNAME varchar(30),ORDERID VARCHAR(10));
Query OK, 0 rows affected (0.34 sec)

mysql> insert into PRIDECTS values("ABC1","POWDER","CAD1");
ERROR 1146 (42S02): Table 'employee.pridects' doesn't exist
mysql> insert into PRODUCTS values("ABC1","POWDER","CAD1");
Query OK, 1 row affected (0.04 sec)

mysql> insert into PRODUCTS values("ABC2","SUNSCREEN","CAD3");
Query OK, 1 row affected (0.08 sec)

mysql> insert into PRODUCTS values("ABC3","BAG","CAD5");
Query OK, 1 row affected (0.04 sec)

mysql> insert into PRODUCTS values("ABC4","MOISTURIZER","CAD7");
Query OK, 1 row affected (0.10 sec)

mysql> insert into PRODUCTS values("ABC5","RANIYA","CAD9");
Query OK, 1 row affected (0.11 sec)

mysql> SELECT * FROM ORDERS;
+---------+-------------+------------+--------------+------------+
| orderid | ordername   | costumerid | costumername | oredrdate  |
+---------+-------------+------------+--------------+------------+
| CAD1    | RANIYA      | AB1        | HADIYA       | 2023-05-05 |
| CAD2    | POWDER      | AB2        | HASNA        | 2023-05-05 |
| CAD3    | POWDER      | AB3        | HASNA        | 2023-05-05 |
| CAD4    | POWDER      | AB4        | RANIYA       | 2023-05-05 |
| CAD5    | SUNSCREEN   | AB5        | RANIYA       | 2023-05-05 |
| CAD6    | SUNSCREEN   | AB6        | FIDHA        | 2023-05-05 |
| CAD7    | BAG         | AB7        | FIDHA        | 2023-05-05 |
| CAD8    | BAG         | AB8        | FIDHA        | 2023-05-05 |
| CAD9    | MOISTURIZER | AB9        | NISHATH      | 2023-05-05 |
| CAD10   | MOISTURIZER | AB10       | HADIYA       | 2023-05-05 |
+---------+-------------+------------+--------------+------------+
10 rows in set (0.03 sec)

mysql> SELECT * FROM PRODUCTS;
+-----------+-------------+---------+
| PRODUCTID | PRODUCTNAME | ORDERID |
+-----------+-------------+---------+
| ABC1      | POWDER      | CAD1    |
| ABC2      | SUNSCREEN   | CAD3    |
| ABC3      | BAG         | CAD5    |
| ABC4      | MOISTURIZER | CAD7    |
| ABC5      | RANIYA      | CAD9    |
+-----------+-------------+---------+
5 rows in set (0.00 sec)

mysql> SELECT ORDERS.orderid,PRODUCTS.PRODUCTNAME;
ERROR 1109 (42S02): Unknown table 'ORDERS' in field list
mysql> SELECT ORDERS.orderid,PRODUCTS.PRODUCTNAME FROM ORDERS INNERJOIN PRODUCTS ON ORDERS.orderid=PRODUCTS.ORDERID;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'PRODUCTS ON ORDERS.orderid=PRODUCTS.ORDERID' at line 1
mysql> SELECT ORDERS.orderid,PRODUCTS.PRODUCTID FROM ORDERS JOIN PRODUCTS ON ORDERS.orderid=PRODUCTS.ORDERID;
+---------+-----------+
| orderid | PRODUCTID |
+---------+-----------+
| CAD1    | ABC1      |
| CAD3    | ABC2      |
| CAD5    | ABC3      |
| CAD7    | ABC4      |
| CAD9    | ABC5      |
+---------+-----------+
5 rows in set (0.00 sec)

mysql> SELECT ORDERS.orderid,PRODUCTS.PRODUCTNAME FROM ORDERS JOIN PRODUCTS ON ORDERS.orderid=PRODUCTS.ORDERID;
+---------+-------------+
| orderid | PRODUCTNAME |
+---------+-------------+
| CAD1    | POWDER      |
| CAD3    | SUNSCREEN   |
| CAD5    | BAG         |
| CAD7    | MOISTURIZER |
| CAD9    | RANIYA      |
+---------+-------------+
5 rows in set (0.00 sec)

mysql> SELECT ORDERS.orderid,PRODUCTS.PRODUCTNAME FROM ORDERS INNER JOIN PRODUCTS ON ORDERS.orderid=PRODUCTS.ORDERID;
+---------+-------------+
| orderid | PRODUCTNAME |
+---------+-------------+
| CAD1    | POWDER      |
| CAD3    | SUNSCREEN   |
| CAD5    | BAG         |
| CAD7    | MOISTURIZER |
| CAD9    | RANIYA      |
+---------+-------------+
5 rows in set (0.00 sec)

mysql> SELECT ORDERS.orderid,PRODUCTS.PRODUCTNAME FROM ORDERS INNER JOIN PRODUCTS ON ORDERS.orderid=PRODUCTS.ORDERID;
+---------+-------------+
| orderid | PRODUCTNAME |
+---------+-------------+
| CAD1    | POWDER      |
| CAD3    | SUNSCREEN   |
| CAD5    | BAG         |
| CAD7    | MOISTURIZER |
| CAD9    | RANIYA      |
+---------+-------------+
5 rows in set (0.00 sec)

mysql>
