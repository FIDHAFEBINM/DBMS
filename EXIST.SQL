mysql: [Warning] C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe: ignoring option '--no-beep' due to invalid value ''.
Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 16
Server version: 8.0.19 MySQL Community Server - GPL

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> USE EMPLOYEE;
Database changed
mysql> SHOW TABLES;
+--------------------+
| Tables_in_employee |
+--------------------+
| course             |
| department         |
| employee           |
| faculty            |
| orders             |
| products           |
| productsview       |
+--------------------+
7 rows in set (0.01 sec)

mysql> SELECT * FROM ORDERS;
+---------+-------------+------------+--------------+------------+
| orderid | ordername   | costumerid | costumername | oredrdate  |
+---------+-------------+------------+--------------+------------+
| CAD1    | RANIYA      | AB1        | HADIYA       | 2023-05-05 |
| CAD10   | MOISTURIZER | AB10       | HADIYA       | 2023-05-05 |
| CAD2    | POWDER      | AB2        | HASNA        | 2023-05-05 |
| CAD3    | POWDER      | AB3        | HASNA        | 2023-05-05 |
| CAD4    | POWDER      | AB4        | RANIYA       | 2023-05-05 |
| CAD5    | SUNSCREEN   | AB5        | RANIYA       | 2023-05-05 |
| CAD6    | SUNSCREEN   | AB6        | FIDHA        | 2023-05-05 |
| CAD7    | BAG         | AB7        | FIDHA        | 2023-05-05 |
| CAD8    | BAG         | AB8        | FIDHA        | 2023-05-05 |
| CAD9    | MOISTURIZER | AB9        | NISHATH      | 2023-05-05 |
+---------+-------------+------------+--------------+------------+
10 rows in set (0.00 sec)

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

mysql> SELECT orderid,costumername from OREDRS O WHWER EXIST(SELSCT * FROM PRODUCTS P WHWER P.ORDERID=O.oredrid);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'WHWER EXIST(SELSCT * FROM PRODUCTS P WHWER P.ORDERID=O.oredrid)' at line 1
mysql> SELECT orderid,costumername from OREDRS O WHWER EXIST(SELECT * FROM PRODUCTS P WHWER P.ORDERID=O.oredrid);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'WHWER EXIST(SELECT * FROM PRODUCTS P WHWER P.ORDERID=O.oredrid)' at line 1
mysql> SELECT orderid,costumername from OREDRS O WHERE EXIST(SELECT * FROM PRODUCTS P WHERE P.ORDERID=O.oredrid);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SELECT * FROM PRODUCTS P WHERE P.ORDERID=O.oredrid)' at line 1
mysql> SELECT orderid,costumername from OREDRS O WHWER EXIST(SELECT * FROM PRODUCTS P WHWER P.ORDERID=O.oredrid);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'WHWER EXIST(SELECT * FROM PRODUCTS P WHWER P.ORDERID=O.oredrid)' at line 1
mysql> SELECT orderid,costumername from OREDRS O WHERE EXIST(SELECT * FROM PRODUCTS P WHERE P.ORDERID=O.oredrid);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SELECT * FROM PRODUCTS P WHERE P.ORDERID=O.oredrid)' at line 1
mysql> SELECT orderid,costumername from OREDRS O WHERE EXIST (SELECT * FROM PRODUCTS P WHERE P.ORDERID=O.oredrid);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SELECT * FROM PRODUCTS P WHERE P.ORDERID=O.oredrid)' at line 1
mysql> SELECT orderid,costumername from OREDRS O WHERE EXISTS (SELECT * FROM PRODUCTS P WHERE P.ORDERID=O.oredrid);
ERROR 1146 (42S02): Table 'employee.oredrs' doesn't exist
mysql> SELECT orderid,costumername from OREDRS O WHERE EXISTS (SELECT * FROM PRODUCTS P WHERE P.ORDERID=O.orderid);
ERROR 1146 (42S02): Table 'employee.oredrs' doesn't exist
mysql> SELECT orderid,costumername from ORDERS O WHERE EXISTS (SELECT * FROM PRODUCTS P WHERE P.ORDERID=O.oredrid);
ERROR 1054 (42S22): Unknown column 'O.oredrid' in 'where clause'
mysql> SELECT orderid,costumername from ORDERS O WHWER EXISTS (SELECT * FROM PRODUCTS P WHERE P.ORDERID=O.oredrid);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'WHWER EXISTS (SELECT * FROM PRODUCTS P WHERE P.ORDERID=O.oredrid)' at line 1
mysql> SELECT orderid,costumername from ORDERS O WHERE EXISTS (SELECT * FROM PRODUCTS P WHERE P.ORDERID=O.oredrid);
ERROR 1054 (42S22): Unknown column 'O.oredrid' in 'where clause'
mysql> SELECT orderid,costumername from ORDERS O WHERE EXISTS (SELECT * FROM PRODUCTS P WHERE P.ORDERID=O.orderid);
+---------+--------------+
| orderid | costumername |
+---------+--------------+
| CAD1    | HADIYA       |
| CAD3    | HASNA        |
| CAD5    | RANIYA       |
| CAD7    | FIDHA        |
| CAD9    | NISHATH      |
+---------+--------------+
5 rows in set (0.02 sec)

mysql> SELECT * FROM COURSE;
+---------+----------+------------+
| STAFFID | COURSEID | COURSENAME |
+---------+----------+------------+
| AB1     | 1A2      | DBMS       |
| AB2     | 1A3      | ACN        |
| AB3     | 1A4      | AI         |
| AB4     | 1A5      | AOS        |
| AB5     | 1A6      | JAVA       |
+---------+----------+------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM FACULTY;
+-----+--------+---------+
| FNO | FNAME  | STAFFID |
+-----+--------+---------+
| A1  | RANIYA | AB1     |
| A2  | FIDHA  | AB2     |
| A3  | HADIYA | AB3     |
+-----+--------+---------+
3 rows in set (0.00 sec)

mysql>
mysql> UPDATE FACUKTY SET FNAME="RANI" WHERE FNO="A2";
ERROR 1146 (42S02): Table 'employee.facukty' doesn't exist
mysql> UPDATE FACULTY SET FNAME="RANI" WHERE FNO="A2";
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM FACULTY;
+-----+--------+---------+
| FNO | FNAME  | STAFFID |
+-----+--------+---------+
| A2  | RANI   | AB2     |
| A3  | HADIYA | AB3     |
+-----+--------+---------+
2 rows in set (0.00 sec)

mysql> ROLLBACK;
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT * FROM FACULTY;
+-----+--------+---------+
| FNO | FNAME  | STAFFID |
+-----+--------+---------+
| A2  | RANI   | AB2     |
| A3  | HADIYA | AB3     |
+-----+--------+---------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM FACULTY;
+-----+--------+---------+
| FNO | FNAME  | STAFFID |
+-----+--------+---------+
| A2  | RANI   | AB2     |
| A3  | HADIYA | AB3     |
+-----+--------+---------+
2 rows in set (0.00 sec)

mysql> ROLLBACK;
Query OK, 0 rows affected (0.00 sec)

mysql> UPDATE FACUKTY SET FNAME="RANI" WHERE FNO="A2";
ERROR 1146 (42S02): Table 'employee.facukty' doesn't exist
mysql> DELETE FROM FACULTY WHERE FNAME='RANIYA';
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT * FROM FACULTY;
+-----+--------+---------+
| FNO | FNAME  | STAFFID |
+-----+--------+---------+
| A2  | RANI   | AB2     |
| A3  | HADIYA | AB3     |
+-----+--------+---------+
2 rows in set (0.00 sec)

mysql> ROLLBACK;
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT * FROM FACULTY;
+-----+--------+---------+
| FNO | FNAME  | STAFFID |
+-----+--------+---------+
| A2  | RANI   | AB2     |
| A3  | HADIYA | AB3     |
+-----+--------+---------+
2 rows in set (0.00 sec)

mysql> DELETE FROM FACULTY WHERE FNAME='RANI';
Query OK, 1 row affected (0.19 sec)

mysql> ROLLBACK;
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT * FROM FACULTY;
+-----+--------+---------+
| FNO | FNAME  | STAFFID |
+-----+--------+---------+
| A3  | HADIYA | AB3     |
+-----+--------+---------+
1 row in set (0.00 sec)

mysql> INSERT INTO FACULTY("A1","FIDHA","AB1");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '"A1","FIDHA","AB1")' at line 1
mysql> INSERT INTO FACULTY VALUES("A1","FIDHA","AB1");
Query OK, 1 row affected (0.09 sec)

mysql> INSERT INTO FACULTY VALUES("A2","RANIYA","AB2");
Query OK, 1 row affected (0.08 sec)

mysql> INSERT INTO FACULTY VALUES("A3","FIDHA","AB4");
ERROR 1062 (23000): Duplicate entry 'A3' for key 'faculty.PRIMARY'
mysql> INSERT INTO FACULTY VALUES("A4","FIDHA","AB4");
Query OK, 1 row affected (0.03 sec)

mysql> SELECT * FROM FACULTY;
+-----+--------+---------+
| FNO | FNAME  | STAFFID |
+-----+--------+---------+
| A1  | FIDHA  | AB1     |
| A2  | RANIYA | AB2     |
| A3  | HADIYA | AB3     |
| A4  | FIDHA  | AB4     |
+-----+--------+---------+
4 rows in set (0.00 sec)

mysql> COMMIT;
Query OK, 0 rows affected (0.00 sec)

mysql> SELECT * FROM FACULTY;
+-----+--------+---------+
| FNO | FNAME  | STAFFID |
+-----+--------+---------+
| A1  | FIDHA  | AB1     |
| A2  | RANIYA | AB2     |
| A3  | HADIYA | AB3     |
| A4  | FIDHA  | AB4     |
+-----+--------+---------+
4 rows in set (0.00 sec)

mysql>


