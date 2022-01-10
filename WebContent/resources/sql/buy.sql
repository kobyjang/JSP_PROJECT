CREATE TABLE buy (
       Gnumber int not null auto_increment,
       id varchar(10) not null,
       Bname int not null,
       BuyDate datetime not null,
 	   Breview	varchar(40) not null,
       Quantity int not null,
       PRIMARY KEY (Gnumber)
)default CHARSET=utf8;


select * from buy;