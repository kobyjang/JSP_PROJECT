CREATE TABLE IF NOT EXISTS pet(
	id VARCHAR(10),
	Aname VARCHAR(10) NOT NULL,
	dutyPrice  INTEGER,
	sex VARCHAR(2) NOT NULL,
	Atype VARCHAR(10) NOT NULL,
	adopt VARCHAR(10) NOT NULL,
	description TEXT,
	fileName  VARCHAR(20),
	PRIMARY KEY (id)
)default CHARSET=utf8;

/*CREATE TABLE IF NOT EXISTS product(
	p_id VARCHAR(10) NOT NULL,
	p_name VARCHAR(20),
	p_unitPrice  INTEGER,
	p_description TEXT,
   	p_category VARCHAR(20),
	p_manufacturer VARCHAR(20),
	p_unitsInStock LONG,
	p_condition VARCHAR(20),
	p_fileName  VARCHAR(20),
	PRIMARY KEY (p_id)
)default CHARSET=utf8;

desc product;
*/


drop table pet;
d
select * from pet;