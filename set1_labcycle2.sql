use myworks;
CREATE TABLE SAILORS (sid int(10),sname VARCHAR(2),rating int(10),age int(10));
describe sailors;
alter table sailors modify column sname varchar(50);
INSERT INTO SAILORS values (22, 'Dustin', 7, 45),(29, 'Brutas', 1, 33),(31, 'Lubber', 8, 55),(32, 'Andy', 8, 25),(58, 'Rusty', 10, 35),(64, 'Horatio', 7, 35),(71, 'Zorba', 10, 16),(74, 'Horatio', 9, 35),(85, 'Art', 3, 26),(95, 'Bob', 3, 64);
select * from sailors;
CREATE TABLE boats (bid int(10),bname VARCHAR(50),color varchar(50));
describe boats
INSERT INTO boats values (101, 'interlake','blue'),(102, 'interlake','red'),(103, 'clipper','green'),(104, 'marine','red');
 CREATE TABLE reserves (sid int(10),bid int(10),day date);
describe reserves
INSERT INTO reserves values (22, 101,'19981010');
INSERT INTO reserves values (22, 102,'19981010'),(22, 103,'19980810'),
(22, 104,'19980710'),(31, 102,'19981011'),(31, 103,'19980611'),
(31, 104,'19981211'),(64, 101, '19980509'),(64, 102,'19980809'),
(74, 103,'19980809');
select * from reserves;
select sname,age from sailors;
select * from sailors,reserves where sailors.sid=reserves.sid and bid =101;
select sname from sailors where rating > 7;
select distinct sname from sailors,reserves,boats where boats.bid = 103 and boats.bid=reserves.bid and sailors.sid=reserves.sid;
select distinct sname from sailors,reserves,boats where boats.color='red' and boats.bid = reserves.bid and sailors.sid = reserves.sid order by sailors.age;
select distinct sname from sailors,reserves,boats where boats.color=('red' or 'green') and boats.bid = reserves.bid and sailors.sid = reserves.sid;
select distinct color from sailors,boats,reserves where sailors.sname='lubber' and sailors.sid = reserves.sid and reserves.bid = boats.bid;
select distinct sname from sailors,reserves,boats where boats.color=('red' AND 'green') and boats.bid = reserves.bid and sailors.sid = reserves.sid;
SELECT DISTINCT sid,sname FROM SAILORS,RESERVES WHERE reserves.sid = sailors.sid;
SELECT distinct sname, reserves.sid FROM RESERVES, SAILORS WHERE sailors.sid = reserves.sid GROUP BY DAY, reserves.sid,sname HAVING COUNT(DAY)>1 ;
select sname,age from sailors where age = (sel ect min(age) from sailors); 
select sname,rating from sailors where rating > (select max(rating) from sailors where sname = 'horatio'); 

SELECT  SID,SNAME  FROM SAILORS  WHERE NOT EXISTS ( SELECT BID FROM BOATS 
 WHERE NOT EXISTS ( SELECT RESERVES.BID FROM RESERVES  WHERE RESERVES.SID = SAILORS.SID  AND RESERVES.BID=BOATS.BID));


SELECT COUNT(c.sname) FROM (SELECT DISTINCT sname FROM Sailors) c;
select avg(age) from sailors;
select rating,avg(age) from sailors group by rating ;
SELECT a.rating,b.mean FROM (SELECT COUNT(sname) AS num,rating FROM SAILORS GROUP BY rating HAVING COUNT(sname)>1) a, 
(SELECT rating,AVG(age) AS mean FROM SAILORS GROUP BY rating ) b WHERE a.rating = b.rating;
