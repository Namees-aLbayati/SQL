DROP DATABASE IF EXISTS mydb;
CREATE DATABASE mydb;
USE mydb;

DROP TABLE 'employee';
CREATE TABLE employee (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,

);
id as int, fname, lname, age as int, hiredate as date.

/*
Recruiting Automation
SQL
Tutorial
Follow the link below to the online SQL tutorial.  

Complete sections starting with Home down through SQL Exists to learn the initial SQL language and concepts.

These sections if mastered should enable you to be successful with the SQL Assessment challenge that follows.  

You need to know how to write and use Create Table statements, Select statements (queries), Insert statements, Update statements, as well as left and right Joins.  You will also need to be able to drop a table if it exists.

Once you feel comfortable enough with SQL move on the Assessment below.

You can refer back to the tutorial or explore other SQL learning resources to acquire the skills to complete the challenge. 

At the end of the day you must learn the material well enough to explain each line of code to our developers in your technical interview.

Assessment
Write SQL code to create tables and load data, query the tables using given criteria, and update data using given criteria. 

If the requirements say select by fname then make sure you use fname to select and not another field like id because it is easier.  We are checking to see if you can learn how to do this from the tutorial.  You are authorized to look other places for additional help but do not copy something you cannot explain fully.

The database engine used here is most similar in command syntax to PostgreSQL. 

SQL should be a complete process that can be re-run multiple times.  Your SQL code window should have all of the SQL statements to do the entire task.  Each time it is run it should complete each of the requirements in order including droping and recreating the tables etc.  You can practice statements one at a time but make sure to clear the window and then put all of the code into the SQL window and make sure it runs before submitting.  It is important that you follow the requirments fully.  Do nut submit until it is complete.  Make sure you know your code well enough to explain it to our interviewer; after all, you wrote it.

Requirements:

All SQL code must be present in the SQL (editor) window when you submit this assessment.  The SQL log is only for your reference while solving the code.  The SQL log will not be visable and therefore will not be considered when reviewing your code.  Make sure all of your SQL including dropping/creating tables, insert statements, and select/update queries are visable in the SQL window when you submit.  You should be able to click on Run SQL and your SQL code should execute completely with the full results showing in the Output box.

Make sure you complete each of the following requirments fully.

Drop tables employee, contact, and address if they already exist

Any unspecified field type is text.

Create a table called employee with fields for id as int, fname, lname, age as int, hiredate as date.

Load employee records with this data:

01 Alan Palmer  32  12/15/2019

02 Susan Shepard  28  07/21/2015

03 Justin Ward   43 08/24/2017

04 Alan Smith  30  06/22/2017

05 James Betternot 26 06/22/17

06 Ralph White  44  06/23/17

07 Leonard Nimoy 72 12/14/07

08 Janice Rand  61 07/06/16

09 Harry Mudd 65 07/06/20

10 Hikaru Sulu 58 03/21/15

11 James Kirk  59 01/02/14

12 Leonard McCoy 65 08/21/15

13 Pavel Chekov  44 10/15/14

14 Christopher Pike 32 11/24/14

15 Darth Vader 124 03/22/15

16 Boba Fett 49 03/22/15

17 Luke Skywalker 66 11/11/19

18 Han Solo 73 02/03/12

19 Kylo Ren  34 06/14/20

20 Galen Erso  55 06/14/20

 

Create a table called address with fields for id as int, address1, address2, city, state, zip.

Load records with this data:

01, 1211 Sudan St, n/a, Mobile, AL, 36609

02,  4800 Barkshire Dr, n/a, Pace, FL, 32571

03,  12 Nutmeg Ct, n/a, Culver City, CA 90211

04,  2142 Elmwood Pl, n/a, Johnson City, TN, 37112

05, 777 Heavenly Ln, Box 13, Pike City, MN, 50877

Create a table called contact with fields for id as int, cellphone, homephone, email

Load records with this data:

01, 5121325343, 5125234234, apalmer@yachtmail.com

02, 5129739834, 5129847873, sshepard@yorkdevtraining.com

03, 6453898502, 6459872345,  jsward2007@yahoo.com

04, 8763238756, 8763736548, alsmith999@gmail.com

05, 8880345966, 8888567987, james.betternot@hotmail.com

06, 3322827765, 3328760098, ralph.white264@aol.com

Create a query that joins (inner) employee and address tables on id and returns fname, lname, age, city, state where fname = Alan 

Create a query that joins (inner) employee, address, and contact tables on id and returns fname, lname, age, city, state, email where email  =  james.betternot@hotmail.com

Update Susan Shepard's cellphone to be 4383991212 using fname and lname in the where clause. You must use the employee table to find the name and the contact table to update the cellphone. (Hint: You can use a WHERE ??? = (select ??? from ??? where ??? = "???") to reference a value in the employee table that matches the record in the contact table you are updating.

Create a query that returns all of Susan's data by name

 

Remember that your code needs to be complete and working before you submit.  All of your SQL code should be contained in the SQL window.  The Log window will not be visable or considered during your review.  Submitting incomplete code will reduce your chances of passing your interview.

 

 

Database Tables
SQL Log
SQL
Output
12
DROP DATABASE IF EXISTS nameesDB;

SyntaxError: Parse error on line 1: drop employee; -------------^ Expecting 'DATABASE', got 'SEMICOLON' */