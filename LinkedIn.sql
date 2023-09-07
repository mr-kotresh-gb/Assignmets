create database LinkedIn;
use LinkedIn;

create table ATS(id int, technology varchar(20));

insert into ATS values
(1, "DS"),
(1, "Tableue"),
(1, "SQL"),
(2, "R"),
(2, "Power BI"),
(1, "Python");

select id from ATS where technology in ("DS", "Tableue", "SQL", "Python") group by id;