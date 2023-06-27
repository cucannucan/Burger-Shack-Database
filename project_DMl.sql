--ceren ucan D21124013, Luke Kiernan C21411466
INSERT INTO restaurant VALUES (111, '5 Deerpark Rise, Ashbourne', 0894232282);
INSERT INTO restaurant VALUES (112, '10 Brokey Rise, Athboy', 0894774224);
INSERT INTO restaurant VALUES (113, '15 Slane Road, Phibsborough', 0894283222);
INSERT INTO restaurant VALUES (114, '20 Park Lane, Glasnevin', 0892193311);
INSERT INTO restaurant VALUES (115, '25 Fake Street, Finglas', 0894192221);

INSERT INTO "Table" VALUES (701, 2, 'window', 111);
INSERT INTO "Table" VALUES (702, 4, 'interior', 112);
INSERT INTO "Table" VALUES (703, 2, 'window', 113);
INSERT INTO "Table" VALUES (704, 8, 'interior', 114);
INSERT INTO "Table" VALUES (705, 6, 'window', 115);


INSERT INTO customer VALUES (1016, 'Ceren', 'Ucan', 'cerenucan@gmail.com', 0871603311, '02-JUN-21 08:30:55', 701);
INSERT INTO customer VALUES (1017, 'Luke', 'Kiernan', 'lukekiernan@gmail.com',0858801595, '01-JUL-21 05:33:51', 702);
INSERT INTO customer VALUES (1018, 'Steve', 'Rodgers', 'steveuser@gmail.com', 0822748357, '22-APR-21 12:14:35', 703);
INSERT INTO customer VALUES (1019, 'Berivan', 'Ucan', 'berivanucan@gmail.com', 0822438202, '01-DEC-21 03:22:51', 704);
INSERT INTO customer VALUES (1020, 'Olci', 'Saroglu', 'olcisarogluser@gmail.com', 0892848202, '12-JAN-21 10:45:21', 705);

INSERT INTO penaltybill VALUES (1911, 1016,'21-MAY-21 08:12:45', '21-MAY-21 10:37:12', 55.35);
INSERT INTO penaltybill VALUES (1912, 1017,'03-OCT-21 09:37:21', '03-OCT-21 11:22:52', 125.45);
INSERT INTO penaltybill VALUES (1913, 1018,'03-JUN-21 03:31:31', '03-JUN-21 07:24:51', 100.30);
INSERT INTO penaltybill VALUES (1914, 1019,'16-JUL-21 01:11:15',  '16-JUL-21 05:21:25', 520.30);
INSERT INTO penaltybill VALUES (1915, 1020,'27-SEP-20 04:33:11',  '27-SEP-21 06:12:32',  98.42);


INSERT INTO booktable VALUES ( 1016,'Fajar', 'Jones', '5 Brookworth Grove', 'fajaruser@gmail.com');
INSERT INTO booktable VALUES ( 1017,'Bayan', 'Ross', '10 Ashbrook Rise', 'bayanuser@gmail.com');
INSERT INTO booktable VALUES ( 1018,'Rana', 'Marley','2 Cluan Ri', 'ranauser@gmail.com');
INSERT INTO booktable VALUES ( 1019,'Vilim', 'Harley', '4 Alderbrook Street', 'vilimuser@gmail.com');
INSERT INTO booktable VALUES ( 1020,'Denis', 'Reece','72 Ashwood Avenue', 'denisuser@gmail.com');


INSERT INTO staffTable VALUES( 311, 'Ryan', 'Gore', '5 Keithpark Rise', 0862411899, 'ryanuser@burgershack.com', '27-JAN-1992', '10-JAN-2021', 111 );
INSERT INTO staffTable VALUES( 312, 'Sam', 'Leroy', '10 Smithfield Park', 0862731249, 'samuser@burgershack.com', '22-MAR-2002', '24-APR-2020', 112 );
INSERT INTO staffTable VALUES( 313, 'Buse', 'McKenna','15 Whitsworth Lane', 0868212219, 'buseuser@burgershack.com', '14-APR-2000', '25-SEP-2015', 113);
INSERT INTO staffTable VALUES( 314, 'Koray', 'Poulsen', '23 Alderbrook Street', 0867311229, 'korayuser@burgershack.com', '03-AUG-2001', '29-DEC-2018', 114);
INSERT INTO staffTable VALUES( 315, 'Ayhan', 'Pearse','42 Johnswood Drive', 0862495122, 'ayhanuser@burgershack.com', '25-JUN-1999', '11-JUL-2020', 115);
INSERT INTO staffTable VALUES( 211, 'Mark', 'Brian', '8 Keithpark Rise', 0862576899, 'markuser@burgershack.com', '27-JAN-2000', '24-JAN-2021', 111 );
INSERT INTO staffTable VALUES( 212, 'Sarah', 'Jane', '13 Smithfield Park', 0862258459, 'sarahuser@burgershack.com', '12-MAR-2002', '22-APR-2020', 112);
INSERT INTO staffTable VALUES( 213, 'Gavin', 'Russel','15 Whitsworth Lane', 0861884219, 'gavinuser@burgershack.com', '11-APR-2000', '25-SEP-2015', 113);
INSERT INTO staffTable VALUES( 214, 'Eva', 'Silva', '20 Alderbrook Street', 0862483864, 'evauser@burgershack.com', '03-AUG-2001', '22-DEC-2018', 114);
INSERT INTO staffTable VALUES( 215, 'Chris', 'Smith','42 Johnswood Drive', 0862483712, 'chrisuser@burgershack.com', '15-JUN-1989', '31-JUL-2020', 115);


INSERT INTO waiters VALUES (66000000,211);
INSERT INTO waiters VALUES (74000000,212);
INSERT INTO waiters VALUES (83100000,213);
INSERT INTO waiters VALUES (98700000,214);
INSERT INTO waiters VALUES (10100000,215);

INSERT INTO managers VALUES (1600, 311);
INSERT INTO managers VALUES (2400, 312);
INSERT INTO managers VALUES (3300, 313);
INSERT INTO managers VALUES (4200, 314);
INSERT INTO managers VALUES (5400, 315);

INSERT INTO receipt VALUES (1911, 4, '21-MAY-21 10:37:12', 1016, 701, 1600, 66000000);
INSERT INTO receipt VALUES (1912, 6, '03-OCT-21 11:22:52', 1017, 702, 2400, 74000000);
INSERT INTO receipt VALUES (1913, 2, '30-SEP-21 01:21:03', 1018, 703, 3300, 83100000);
INSERT INTO receipt VALUES (1914, 5, '09-MAR-21 10:34:09', 1019, 704, 4200, 98700000);
INSERT INTO receipt VALUES (1915, 3, '10-APR-21 11:30:04', 1020, 705, 5400, 10100000);


SELECT * FROM receipt;
SELECT * FROM booktable;
SELECT * FROM customer;
SELECT * FROM penaltybill;
SELECT * FROM restaurant;
SELECT * FROM stafftable;
SELECT * FROM "Table";
SELECT * FROM waiters;
SELECT * FROM managers;

--right outter join statment used to combine details of all staff and waiters into one table 
SELECT
    fname,
    lname,
    address,
    email--will display this data 
FROM
    waiters--gets data from table waiters 
RIGHT OUTER JOIN staffTable ON--right outter join allowing staff waiters_id to be the same as staff_id for the purposes of the table 
    waiters_id = staff_id;





--case selection function
--use of union statment
SELECT guest_count, time,--will display this data 
CASE--case used to check the value of guest count so it can output the customers that has less than or = to 3 guests
    WHEN guest_count <= 3 THEN 'Less than/Equal 3 guests'
END
FROM receipt--gest the data to display from the table waiters 
WHERE guest_count <= 3
UNION-- union is used to combine the data of above (where guest count was less than or = to 3)and below select statment (where guest count was greater than or = to 5)
SELECT guest_count, time,
CASE--case used to check the value of guest count so it can output the customers that has greater than or = to 5 guests
    WHEN guest_count >= 5 THEN 'Greater than/Equal 5 guests'
END
FROM receipt
WHERE guest_count >= 5;









-- intersect statment used to display common data in both the customer and "table" tables, showing who booked each table
SELECT  table_tableid, customerid, fname--will display this data 
   FROM customer--gets its data from customer table 
   LEFT JOIN "Table"
   ON table_id = table_ID
INTERSECT
   SELECT  table_tableid, customerID, fname--will display this data 
   FROM "Table"--gets its data from "table" table 
   RIGHT JOIN customer
   ON table_id = table_ID;








-- use fo view statment to diapley the customers at wach table does not include guests
DROP VIEW CustomersAtTable;
CREATE VIEW CustomersAtTable AS
SELECT  table_tableid, customerID, fname--will display this data 
   FROM customer
   LEFT JOIN "Table"
    ON table_id = table_ID
INTERSECT
   SELECT  table_tableID, customerID, fname--will display this data 
   FROM "Table"
   RIGHT JOIN customer
   ON table_id = table_ID;

select * from CustomersAtTable;






--left outter join statment 
SELECT
    fname,
    lname,
    address,
    email--will display this data 
FROM
    stafftable
LEFT OUTER JOIN managers
ON staff_ID = stafftable_staffid;





--inner join statment
SELECT waiters.waiters_ID, receipt.time--will display this data 
FROM waiters
INNER JOIN receipt--where there is a recpit associated with a waiter 
ON waiters.waiters_ID = receipt.waiters_waiters_ID;




--update statement
UPDATE receipt--modift the recipt to add guests to recipt where guest count was less than or = to 2
       SET   guest_count = guest_count + 1
       WHERE guest_count <= 2;  
 
   SELECT guest_count--will display this data 
       FROM receipt  
       ORDER BY booking_ID;  
