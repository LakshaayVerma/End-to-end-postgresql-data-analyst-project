-- BASIC SQL ANALYSIS QUERIES
-- Online Bookstore Project

-- 1. Retrieve all books in the Fiction genre
SELECT *
FROM Books
WHERE Genre = 'Fiction';

-- 2. Find books published after the year 1950
SELECT *
FROM Books
WHERE Published_Year > 1950;

-- 3. List all customers from Canada
SELECT *
FROM Customers
WHERE Country = 'Canada';

-- 4. Show orders placed in November 2023
SELECT *
FROM Orders
WHERE Order_Date BETWEEN '2023-11-01' AND '2023-11-30';

-- 5. Retrieve the total stock of books available
SELECT SUM(Stock) AS Total_Stock
FROM Books;

-- 6. Find the most expensive book
SELECT *
FROM Books
ORDER BY Price DESC
LIMIT 1;

-- 7. Show all orders where quantity > 1
SELECT *
FROM Orders
WHERE Quantity > 1;

-- 8. Retrieve all orders where total amount exceeds $20
SELECT *
FROM Orders
WHERE Total_Amount > 20;

-- 9. List all unique genres
SELECT DISTINCT Genre
FROM Books;

-- 10. Find the book with the lowest stock
SELECT *
FROM Books
ORDER BY Stock
LIMIT 1;

-- 11. Calculate total revenue from all orders
SELECT SUM(Total_Amount) AS Total_Revenue
FROM Orders;
