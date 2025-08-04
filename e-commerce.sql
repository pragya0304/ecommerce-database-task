create database e_commerce;
use e_commerce;

create table customers (
  Customer_ID int primary key auto_increment,
  cust_Name varchar(30),
  Email varchar(100) Unique,
  Address Text,
  Phone varchar(10)
);
insert into customers(cust_Name,Email,Address,Phone) values('Pragya Bohra','pragya123@gmail.com','Indore',9897643217),
('Amit Sharma','amitsingh43@gmail.com','Delhi',7667643217),
('Aarvik Bohra','aarvik09@gmail.com','Singapore',9897621438),
('Inyat Singh','inyatsingh02@gmail.com','Bhopal',9897543219);

create table categories(
 CategoryID int primary key auto_increment,
 CategoryName Varchar(100) Not null
);

insert into categories(CategoryID,CategoryName)values(1,'Electronics'),
(2,'Clothing'),
(3,'Books'),
(4,'Home Appliances');

create table Products(
ProductID int primary key auto_increment,
ProductName varchar(30),
Description TEXT,
Price decimal(10,2),
Stock int,
CategoryID int,
foreign key(CategoryId) references categories(CategoryID)
);

insert into Products(ProductID,ProductName,Description,price,Stock,CategoryId)values(1,'iPhone 15', 'Apple smartphone', 79999.00, 10, 1),
(2,'T-Shirt', 'Cotton round neck t-shirt', 499.00, 50, 2),
(3,'Book - Atomic Habits', 'Self-help book', 350.00, 30, 3),
(4,'Microwave Oven', '800W Microwave', 6500.00, 8, 4);

create table Orders(
OrderID int primary key auto_increment,
Customer_ID int,
OrderDate datetime default current_timestamp,
Status varchar(50),
foreign key(Customer_ID) references customers(Customer_ID)
);
insert into Orders(Customer_ID,OrderDate,Status)values(1, '2025-08-01 10:30:00', 'Shipped'),
(2, '2025-08-02 11:00:00', 'Processing');
 create table OrderDetails(
 OrderdetailID int primary key auto_increment,
 OrderID int,
 ProductID int,
 Quantity int,
 PriceATPurchase decimal(10,2),
 foreign key (OrderID) references Orders(OrderID),
 foreign key (ProductID)references Products(ProductID)
 );
 insert into OrderDetails(OrderID,ProductID,Quantity,PriceATPurchase) values (1,1, 1, 79999.00),
(1, 2, 2, 499.00),
(2, 3, 1, 350.00);
 
 
 
 
 create table Payments(
 PaymentID int primary key auto_increment,
 OrderID int,
 PaymentDate datetime default current_timestamp,
 PaymentMethod varchar(50),
 Amount decimal(10,2),
 foreign key(OrderID) references Orders(OrderID)
 );
insert into Payments(OrderID,PaymentDate, PaymentMethod,Amount) values(1, '2025-08-01 12:00:00', 'UPI', 80997.00),
(2, '2025-08-02 12:30:00', 'Credit Card', 350.00);


