INSERT INTO product VALUES('P1234', 'iPhone 6s', 800000, '1334X750 Renina HD display, 8-megapixel iSight Camera','Smart Phone', 'Apple', 1000, 'new', 'P1234.png');
INSERT INTO product VALUES('P1235', 'LG PC gram', 1500000, '3.3-inch,IPS LED display, 5rd Generation Intel Core processors', 'Notebook', 'LG', 1000, 'new', 'P1235.png');
INSERT INTO product VALUES('P1236', 'Galaxy Tab S', 900000, '3.3-inch, 212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor', 'Tablet', 'Samsung', 1000, 'new', 'P1236.png');

select * from product;



INSERT INTO pet VALUES('P0001', '�����', 50000,'��', '���','�о���','5����/���/�¼�' ,'P0001.jpg');
INSERT INTO pet VALUES('P0010', '������', 40000,'��', '����','�о���','4����/���/�ֱ�����', 'P0010.jpg');
INSERT INTO pet VALUES('P0100', '�忩��', 10000,'��', '�縷����','�о���','3����/���/Ȱ��', 'P0100.jpg');



delete from pet;


	cat.setadopt("�о���");
		cat.setDescription("4����/���/�ֱ�����");
		cat.setFilename("P0010.jpg");

		Pet etc = new Pet("P0100", "�忩��", 10000);
		etc.setsex("��");
		etc.setAtype("�縷����");
		etc.setadopt("������");
		cat.setDescription("3����/���/Ȱ��");