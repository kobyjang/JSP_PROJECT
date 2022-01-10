	
create table cart ( 
c_id varchar(10)  not null,
id varchar(10) not null,
totalPrice int not null,
date date,
primary key(c_id) 
) default CHARSET=utf8;

<th>상품</th>
					<th>가격</th>
					<th>수량</th>
					<th>소계</th>
					<th>비고</th>
					
					select * from cart;
					drop table cart;
					