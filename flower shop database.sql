--select all the colomns 
SELECT * 
FROM FlowerShopWorksheetCSV;

--slect flower name colomn
SELECT flower_name 
FROM FlowerShopWorksheetCSV;

--select 4 colomns 
SELECT flower_ID, flower_name, price, order_number 
FROM FlowerShopWorksheetCSV;

--select specific email from customer email
SELECT customer_name, customer_email
FROM FlowerShopWorksheetCSV
WHERE customer_email ='PerciousMazibuko@gmail.com';

SELECT customer_ID,customer_name, customer_number,customer_email
FROM FlowerShopWorksheetCSV
WHERE customer_number = '2778822922';

--select flower name & price ordering according to price ascending order 
SELECT flower_name, price
FROM FlowerShopWorksheetCSV 
ORDER BY price ASC;

--comparison operators
--select flower name from table where price is 100 or less
SELECT flower_name, price
FROM FlowerShopWorksheetCSV 
WHERE price <=100;

--Select flower name from table where price is not 100 or less

SELECT flower_name, price
FROM FlowerShopWorksheetCSV 
WHERE price !=100
AND price !<100;

--Text operators 
--selct flower names that start with S & P
SELECT flower_name
FROM FlowerShopWorksheetCSV 
WHERE flower_name LIKE 'P%'
OR flower_name LIKE 'S%';

--Ranges
--select flower name where price ranges between 200 to 500 rand
SELECT flower_name, price
FROM FlowerShopWorksheetCSV 
WHERE price BETWEEN 200
AND 500;

-- select names with the flower ID 8,10,12,13,15
SELECT flower_name
FROM FlowerShopWorksheetCSV
WHERE flower_ID IN (8,10,12,13,15);

--Find the count in the whole flower shop 
SELECT COUNT(*)
FROM FlowerShopWorksheetCSV;

--Find the count for the customers 
SELECT COUNT(customer_name)
FROM FlowerShopWorksheetCSV;

--finding cheapest flower to the most expensive 
SELECT MIN(price), MAX(price)
FROM FlowerShopWorksheetCSV;

--Modify 
--insert into table new row
INSERT INTO FlowerShopWorksheetCSV
VAlUES (16, 'Pink Roses', 'Female', 'yes', 200, 927614, '2024-03-11', 1016, 'Nicole Fische',
'7 Helmdean Street, Bokburg, 1456', '227063629221', 'NicoleFische33@gmail.com');

--update flower names in table 
Update FlowerShopWorksheetCSV
SET 
flower_name = ' African Lily'
WHERE flower_name = 'African?Lily';

Update FlowerShopWorksheetCSV
SET 
flower_name = ' Peace Lily'
WHERE flower_name = 'Peace?Lily';

Update FlowerShopWorksheetCSV
SET 
flower_name = 'Krants Aloe'
WHERE flower_name = 'Krants?Aloe';

Update FlowerShopWorksheetCSV
SET 
flower_name = 'Bulbine Latifolia'
WHERE flower_name = 'Bulbine?Latifolia';

Update FlowerShopWorksheetCSV
SET 
flower_name = 'Mountain Aloe'
WHERE flower_name = 'Mountain?Aloe';


