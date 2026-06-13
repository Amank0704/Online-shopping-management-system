-- CUSTOMER DATA
INSERT INTO customer VALUES
('C01','Priya','Sharma','DA','9876543210'),
('C02','Rajesh','Patil','MU','9123456780'),
('C03','Pooja','Singh','GH','9234567890'),
('C04','Amit','Kumar','DA','9345678901'),
('C05','Sneha','Joshi','JK','9456789012'),
('C06','Prakash','Desai','MU','9567890123'),
('C07','Neha','Patel','GH','9678901234'),
('C08','Pankaj','Rao','DA','9789012345'),
('C09','Ritu','Shah','AB','9890123456'),
('C10','Vikas','Mehta','XY','9901234567');

-- CATEGORY DATA
INSERT INTO category VALUES
('CT01','Electronics'),
('CT02','Clothing'),
('CT03','Books'),
('CT04','Home'),
('CT05','Sports');

-- PRODUCT DATA
INSERT INTO product VALUES
('PR01','Dell Laptop','CT01',55000.00,20),
('PR02','Samsung Galaxy M35','CT01',18000.00,35),
('PR03','Cotton Kurta','CT02',899.00,100),
('PR04','Denim Jeans','CT02',1499.00,60),
('PR05','DBMS Textbook','CT03',650.00,50),
('PR06','Plastic Chair','CT04',1200.00,25),
('PR07','Cricket Bat','CT05',2500.00,40),
('PR08','Boat Headphones','CT01',1999.00,30),
('PR09','Indian Novel','CT03',399.00,45),
('PR10','LED Study Lamp','CT04',799.00,20);

-- ORDERS DATA
INSERT INTO orders VALUES
('O01','C01','2023-06-10',56999.00),
('O02','C02','2023-07-15',19499.00),
('O03','C03','2023-08-05',5000.00),
('O04','C04','2023-05-25',1798.00),
('O05','C02','2023-08-12',3600.00),
('O06','C06','2023-07-20',1200.00),
('O07','C07','2023-09-01',2500.00),
('O08','C08','2023-08-18',399.00),
('O09','C01','2023-06-30',799.00),
('O10','C03','2023-07-28',1999.00);

-- ORDER ITEMS DATA
INSERT INTO order_items (order_id,product_id,quantity,price)
VALUES
('O01','PR01',1,55000.00),
('O01','PR08',1,1999.00),
('O02','PR02',1,18000.00),
('O02','PR04',1,1499.00),
('O03','PR07',2,2500.00),
('O04','PR03',2,899.00),
('O05','PR06',3,1200.00),
('O06','PR06',1,1200.00),
('O07','PR07',1,2500.00),
('O08','PR09',1,399.00),
('O09','PR10',1,799.00),
('O10','PR08',1,1999.00);

-- INVOICE DATA
INSERT INTO invoice VALUES
('I01','O01','2023-06-10',56999.00),
('I02','O02','2023-07-15',19499.00),
('I03','O03','2023-08-05',5000.00),
('I04','O04','2023-05-25',1798.00),
('I05','O05','2023-08-12',3600.00),
('I06','O06','2023-07-20',1200.00),
('I07','O07','2023-09-01',2500.00),
('I08','O08','2023-08-18',399.00),
('I09','O09','2023-06-30',799.00),
('I10','O10','2023-07-28',1999.00);

-- PAYMENT DATA

-- 
INSERT INTO payment VALUES
('P01','I01','2023-06-10','UPI','SUCCESS'),
('P02','I02','2023-07-15','CARD','SUCCESS'),
('P03','I03','2023-08-05','UPI','FAILED'),
('P04','I04','2023-05-25','CARD','SUCCESS'),
('P05','I05','2023-08-12','UPI','SUCCESS'),
('P06','I06','2023-07-20','NETBANKING','SUCCESS'),
('P07','I07','2023-09-01','UPI','FAILED'),
('P08','I08','2023-08-18','CARD','SUCCESS'),
('P09','I09','2023-06-30','UPI','SUCCESS'),
('P10','I10','2023-07-28','CARD','SUCCESS');