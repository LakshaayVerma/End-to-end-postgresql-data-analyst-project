-- Data Import Script (PostgreSQL)
-- CSV files are located in the dataset/ folder

-- Import Books data
COPY Books(Book_ID, Title, Author, Genre, Published_Year, Price, Stock)
FROM 'Books.csv'
DELIMITER ','
CSV HEADER;

-- Import Customers data
COPY Customers(Customer_ID, Name, Email, Phone, City, Country)
FROM 'Customers.csv'
DELIMITER ','
CSV HEADER;

-- Import Orders data
COPY Orders(Order_ID, Customer_ID, Book_ID, Order_Date, Quantity, Total_Amount)
FROM 'Orders.csv'
DELIMITER ','
CSV HEADER;
