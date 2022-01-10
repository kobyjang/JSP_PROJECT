create table orders ( 
o_id varchar(10) not null,
c_id varchar(10) not null,
id varchar(10) not null,
o_price varchar(10) not null,
d_count varchar(10) not null,
PRIMARY KEY (o_id)
) default CHARSET=utf8;


drop table orders;