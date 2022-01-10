INSERT INTO product VALUES('P1234', 'iPhone 6s', 800000, '1334X750 Renina HD display, 8-megapixel iSight Camera','Smart Phone', 'Apple', 1000, 'new', 'P1234.png');
INSERT INTO product VALUES('P1235', 'LG PC gram', 1500000, '3.3-inch,IPS LED display, 5rd Generation Intel Core processors', 'Notebook', 'LG', 1000, 'new', 'P1235.png');
INSERT INTO product VALUES('P1236', 'Galaxy Tab S', 900000, '3.3-inch, 212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor', 'Tablet', 'Samsung', 1000, 'new', 'P1236.png');

select * from product;



INSERT INTO pet VALUES('P0001', '비숑이', 50000,'남', '비숑','분양중','5개월/흰색/온순' ,'P0001.jpg');
INSERT INTO pet VALUES('P0010', '랙돌이', 40000,'여', '랙돌','분양중','4개월/흰색/애교많음', 'P0010.jpg');
INSERT INTO pet VALUES('P0100', '장여우', 10000,'남', '사막여우','분양중','3개월/흰색/활발', 'P0100.jpg');



delete from pet;


	cat.setadopt("분양중");
		cat.setDescription("4개월/흰색/애교많음");
		cat.setFilename("P0010.jpg");

		Pet etc = new Pet("P0100", "장여우", 10000);
		etc.setsex("남");
		etc.setAtype("사막여우");
		etc.setadopt("예약중");
		cat.setDescription("3개월/흰색/활발");