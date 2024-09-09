
--
--1. List all countries in South America.
SELECT * FROM `country` 
WHERE CONTINENT LIKE 'SOUTH AMERICA';

--2. Find the population of 'Germany'.
SELECT POPULATION FROM `country` 
WHERE NAME LIKE 'GERMANY';

--3. Retrieve all cities in the country 'Japan'.
SELECT * FROM `city` 
WHERE COUNTRYCODE LIKE 'JPN';


--4. Find the 3 most populated countries in the 'Africa' region.
SELECT NAME FROM `country` 
WHERE REGION LIKE '%AFRICA%' 
ORDER BY POPULATION DESC 
LIMIT 0,3;

--5. Retrieve the country and its life expectancy where the population is between 1 and 5 million.
SELECT NAME, LIFEEXPECTANCY FROM `country` 
WHERE POPULATION > 1000000 AND POPULATION < 5000000;

--6. List countries with an official language of 'French'.
SELECT c.Name FROM `countrylanguage` cl
JOIN `country` c ON cl.CountryCode = c.Code
WHERE cl.LANGUAGE LIKE 'FRENCH'
AND cl.IsOfficial = 'T';




--7. Retrieve all album titles by the artist 'AC/DC'.
select title from Album al
join Artist ar ON al.ArtistId = ar.ArtistId
where ar.Name like 'AC/DC';

--8. Find the name and email of customers located in 'Brazil'.
select FirstName, LastName, Email from Customer
where Country like "Brazil";

--9. List all playlists in the database.
select Name from Playlist;


--10. Find the total number of tracks in the 'Rock' genre.
select count(*) from Track T
Join Genre G on T.GenreId = G.GenreId
where G.Name like "Rock";

--11. List all employees who report to 'Nancy Edwards'.
select * from Employee
where Reportsto like 2;

--12. Calculate the total sales per customer by summing the total amount in invoices.
select I.CustomerId, sum(IL.Quantity) as total_sales from InvoiceLine IL
Join Invoice I on I.InvoiceId = IL.InvoiceId
Group by I.CustomerId;





--my database

--get the information about people with the word virginia in their name descended by age
select * from People
where Email like '%virginia%'
order by Age DESC;

--get the average size of sales and their cost
select Product, AVG(Quantity) as Average_Sale_Size from Products
Group by Product, Cost
Order by Cost DESC;


--get the total cost of a purchase by multiplying cost and quantity
Select (cost * quantity) as total_cost from Expenses;