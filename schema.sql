DROP DATABASE IF EXISTS mydb;
CREATE DATABASE mydb;
USE mydb;



  DROP TABLE IF EXISTS mydb.employeeTbl,mydb.addressTbl,contactTbl;

CREATE TABLE employeeTbl (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    fname VARCHAR(255),
    lname VARCHAR(255),
    age INT ,
    hiredate DATETIME default  CURRENT_TIMESTAMP 

);

/*to check created table "DESCRIBE employee; " */
INSERT INTO employeeTbl (id,fname,lname,age,hiredate) VALUES
  (  01, "Alan", "Palmer"  ,32 ,STR_TO_DATE('12/15/2019','%m/%d/%Y')),
(02, "Susan", "Shepard",  28 ,STR_TO_DATE(" 07/21/2015",'%m/%d/%Y')),
(03 ,"Justin", "Ward"  , 43 ,STR_TO_DATE("08/24/2017",'%m/%d/%Y')),
(04, "Alan" ,"Smith",  30  ,STR_TO_DATE("06/22/2017","%m/%d/%Y")),
(05 ,"James", "Betternot" ,26, STR_TO_DATE("06/22/17",'%m/%d/%Y')),
(06 ,"Ralph", "White" , 44  ,STR_TO_DATE("06/23/17",'%m/%d/%Y')),
(07, "Leonard" ,"Nimoy", 72, STR_TO_DATE("12/14/07",'%m/%d/%Y')),
(08 ,"Janice" ,"Rand",  61 ,STR_TO_DATE("07/06/16",'%m/%d/%Y')),
(09, "Harry", "Mudd", 65, STR_TO_DATE("07/06/20",'%m/%d/%Y')),
(10, "Hikaru" ,"Sulu" ,58 ,STR_TO_DATE("03/21/15",'%m/%d/%Y')),
(11 ,"James", "Kirk",  59, STR_TO_DATE("01/02/14",'%m/%d/%Y')),
(12, "Leonard", "McCoy", 65, STR_TO_DATE("08/21/15",'%m/%d/%Y')),
(13 ,"Pavel", "Chekov",  44, STR_TO_DATE("10/15/14",'%m/%d/%Y')),
(14, "Christopher", "Pike", 32 ,STR_TO_DATE("11/24/14",'%m/%d/%Y')),
(15, "Darth" ,"Vader", 124 ,STR_TO_DATE("03/22/15",'%m/%d/%Y')),
(16, "Boba", "Fett", 49, STR_TO_DATE("03/22/15",'%m/%d/%Y')),
(17 ,"Luke" ,"Skywalker", 66,STR_TO_DATE("11/11/19",'%m/%d/%Y')),
(18, "Han" ,"Solo" ,73, STR_TO_DATE("02/03/12",'%m/%d/%Y')),
(19 ,"Kylo", "Ren" , 34, STR_TO_DATE("06/14/20",'%m/%d/%Y')),
(20, "Galen" ,"Erso" , 55 ,STR_TO_DATE("06/14/20",'%m/%d/%Y'));
 


CREATE TABLE addressTbl(
    id INT PRIMARY KEY AUTO_INCREMENT,
    address1 VARCHAR(255) default "address1",
    address2 VARCHAR(255) default NULL,
    city VARCHAR(255) default "Austin",
statEe VARCHAR(255) default "Texas",
zip INT default 78705,
empId INT,
    FOREIGN KEY (empId) REFERENCES employeeTbl(id)
);
/* DATA type for cellphone,homephone could be INT as well,but recently I have seen phonesNo. contain  a ltters like apple care 1‑800‑APLCARE so I believe VARCHAR could be better in this situation */
 
INSERT INTO addressTbl (id,address1,address2,city,statEe,zip,empId) VALUES
(01, "1211 Sudan St", "n/a", "Mobile", "AL", 36609,01),
(02, " 4800 Barkshire Dr", "n/a", "Pace", "FL", 32571,02),
(03,  "12 Nutmeg Ct", "n/a", "Culver City", "CA" ,90211,03),
(04,  "2142 Elmwood Pl"," n/a", "Johnson City", "TN", 37112,04),
(05, "777 Heavenly Ln"," Box 13", "Pike City", "MN", 50877,05);

 CREATE TABLE contactTbl (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cellphone VARCHAR(255),
    homephone VARCHAR(255),
    email VARCHAR(255),
    empId2 INT,
    FOREIGN KEY (empId2) REFERENCES employeeTbl(id)
    );
    INSERT INTO contactTbl (id,cellphone,homephone,email,empId2) VALUES
    (01, "5121325343", "5125234234"," apalmer@yachtmail.com",01),
(02, "5129739834", "5129847873", "sshepard@yorkdevtraining.com",02),
(03, "6453898502", "6459872345",  "jsward2007@yahoo.com",03),
(04, "8763238756", "8763736548", "alsmith999@gmail.com",04),
(05, "8880345966", "8888567987","james.betternot@hotmail.com",05),
(06, "3322827765", "3328760098", "ralph.white264@aol.com",06);


--SELECT * FROM employeeTbl;
-- SELECT * FROM addressTbl;
-- SELECT * FROM contactTbl;

SELECT employeeTbl.fname,employeeTbl.lname,employeeTbl.age,addressTbl.city,addressTbl.statEe 
 FROM employeeTbl
INNER JOIN addressTbl ON employeeTbl.fname='Alan';


SELECT employeeTbl.fname,employeeTbl.lname,employeeTbl.age,addressTbl.city,addressTbl.statEe,contactTbl.email FROM employeeTbl
 INNER JOIN addressTbl,contactTbl WHERE contactTbl.email='james.betternot@hotmail.com';

SELECT employeeTbl.fname,addressTbl.zip,contactTbl.cellphone from employeeTbl INNER JOIN contactTbl,addressTbl WHERE employeeTbl.lname='Shepard';
-- UPDATE contactTbl.cellphone SET contact.cellphone='4383991212' ;
/*
Create a query that joins (inner) employee and address tables on id and returns fname, lname, age, city, state where fname = Alan 

Create a query that joins (inner) employee, address, and contact tables on id and returns fname, lname, age, city, state, email
 where email  =  james.betternot@hotmail.com

Update Susan Shepard's cellphone to be
 4383991212 using fname and lname in the where clause. You must use the employee table to find the name and the contact table to update the cellphone. (Hint: You can use a WHERE ??? = (select ??? from ??? where ??? = "???") to reference a value in the employee table that matches the record in the contact table you are updating.

Create a query that returns all of Susan's data by name

 

Remember that your code needs to be complete and working before you submit.  All of your SQL code should be contained in the SQL window.  The Log window will not be visable or considered during your review.  Submitting incomplete code will reduce your chances of passing your interview.

 */