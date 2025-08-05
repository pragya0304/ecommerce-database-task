use e_commerce;
# insert more column , some with nulls and defaults

insert into customers(cust_Name,Email,Address,Phone)values('Ravi Verma','ravi1123@gmail.com','Mumbai',null);
select * from customers;
# using update query to fill the null value in customer table
UPDATE customers
SET Phone = '9897064541'
WHERE Customer_ID = 5 AND Phone IS NULL; 

# insert a new categories
insert into categories(CategoryName)values('Sports');
select*from categories;

# insert a product with null 
insert into Products(ProductName,Description, Price,Stock,CategoryID)values('Football',Null,1200.00,Null,5);
select*from Products;
#update product description 
Set SQL_SAFE_UPDATES=0; 
update Products
Set Description = ' football is outdoor sports'
where ProductName = 'Football' And description is null;

# update the stock in product table
update Products
set Stock = 25
where ProductName = 'Football' And Stock is null;

# insert a new  order with default date
insert into Orders(Customer_ID,Status)values(3,'Pending');
select*from Orders;

# insert order details with missing quantity (set later)
 insert into OrderDetails(OrderID,ProductID,Quantity,PriceATPurchase)values(3,5,Null,1200.00);
 select*from OrderDetails;
 # update the quantity in orderdetails table because we define it null
 update OrderDetails
 set Quantity = 10
 where OrderID = 3 and ProductID = 5 And Quantity is null;
 
 # deleting the row 
 delete from OrderDetails
 where ProductID = (select ProductID from Products where ProductName = 'Football');
 
 #insert payments with default payment date and null 
 insert into Payments(OrderID,PaymentMethod,Amount)values(3,Null,1200.00);
# update paymentmethod in payments table
update Payments
set PaymentMethod = 'Net Banking'
where OrderID = 3 And PaymentMethod is null;
select*from Payments;

# USING DELETE QUERY 

# deleting row in Product tabel
delete from Products 
where  ProductName = 'Football' and  CategoryID = 5;

delete from customers
where Email is null;

delete from Products where Price is null;

delete from Orders where Status is null;



