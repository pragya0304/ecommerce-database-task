# E-Commerce Database Schema Design

# Task Overview
This project is part of a database learning task that involves designing and implementing a relational database schema for an **E-commerce platform**. The goal is to understand schema creation, relationships, and normalization using MySQL.

## Objectives
- Create a database schema using "MySQL Workbench"
- Identify key "entities" and their "relationships"
- Apply "primary and foreign key" to maintain referential integrity
- Generate an "ER Diagram"
- Learn basic "database normalization concepts"

## Files Included
| File Name           | Description                                |
| `e-commerce.sql`    | SQL script to create the complete database schema |
| `erdiagrm.png.png`  | Entity-Relationship Diagram for the E-commerce schema |

---

##  Entities and Relationships
1. Customers
   - Stores user data  
   - PrimaryKey: CustomerID

2. Categories
   - Product categories (Electronics, Clothing, etc.)  
   - PrimaryKey: CategoryID

3. Products
   - Item details listed for sale  
   - Foreign Key: CategoryID → Categories

4. Orders
   - User purchase info  
   - Foreign Key: CustomerID → Customers

5. OrderDetails
   - Products within each order  
   - Foreign Key: OrderID → Orders  
   - Foreign Key: ProductID → Products  
   - Composite Key: (OrderID, ProductID)

6. Payments
   - Tracks payment information  
   - Foreign Key: OrderID → Orders

---

## Keys & Constraints
- Primary Keys on all tables for uniqueness
- Foreign Keys to maintain data integrity
- AUTO_INCREMENT is used for ID fields
- Used composite keys where required

## ER Diagram
The ER diagram clearly shows:
- One-to-many relationships (e.g., Customers → Orders)
- Many-to-many via junction table (Orders ↔ Products via Order_Items)
- Foreign key dependencies

Refer: `erdiagrm.png.png`

## Key Concepts Used
- DDL (CREATE TABLE, PRIMARY KEY, FOREIGN KEY)
- Database Normalization
- Composite Key
- AUTO_INCREMENT
- ER Diagram design

 Outcome
Successfully designed a normalized, relational E-commerce database schema with proper relationships and constraints.


## 🚀 Tools Used
- MySQL Workbench (for schema + ERD)
- GitHub (for version control and submission)

