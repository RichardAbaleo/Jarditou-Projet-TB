/* EXERCICE 1 */
USE northwind;
SELECT CompanyName AS "Société", ContactName AS "contact", ContactTitle AS "Fonction", Phone AS "Téléphone" FROM customers
WHERE Country = "France" ;

/* EXERCICE 2 */
USE northwind;
SELECT ProductName AS "Produit", UnitPrice AS "Prix" FROM products
WHERE SupplierID = "1" ;

/* EXERCICE 3 */
USE northwind;
SELECT CompanyName AS "Fournisseur" , COUNT(ProductID) AS "Nbre produits" 
FROM products,suppliers
WHERE Country="France" AND products.SupplierID = suppliers.SupplierID
GROUP BY CompanyName 
ORDER BY COUNT(ProductID) DESC;

/* EXERCICE 4 */
USE northwind;
SELECT CompanyName AS "Client" , COUNT(OrderID) AS "Nbre produits" 
FROM customers,orders
WHERE Country="France" AND customers.CustomerID = orders.CustomerID
GROUP BY CompanyName 
HAVING COUNT(OrderID) > 10
ORDER BY COUNT(OrderID) DESC;

/* EXERCICE 5 */
USE northwind;
SELECT CompanyName AS "Client", SUM(UnitPrice * Quantity) AS "CA", Country AS "Pays"
FROM Customers, Orders, `order details`
WHERE orders.CustomerID = customers.CustomerID
AND `order details`.OrderID = orders.OrderID
GROUP BY CompanyName, Country
HAVING CA > 30000
ORDER BY CA DESC;

/* EXERCICE 6 */
USE northwind;
SELECT customers.Country AS "Pays"
FROM suppliers, products, `order details`, orders, customers
WHERE  suppliers.SupplierId = products.SupplierID
AND products.ProductID = `order details`.ProductID
AND `order details`.OrderID = orders.OrderID
AND orders.CustomerID = customers.CustomerID
AND suppliers.CompanyName ="Exotic Liquids"
GROUP BY customers.Country;

/* EXERCICE 7 */
USE northwind;
SELECT SUM(UnitPrice * Quantity) AS "Montant Ventes 97"
FROM `order details`,orders
WHERE `order details`.OrderID = orders.OrderID
AND YEAR(OrderDate) = '1997';

/* EXERCICE 8 */
USE northwind;
SELECT Month(OrderDate), SUM(UnitPrice * Quantity) AS "Montant Ventes 97"
FROM `order details`,orders
WHERE `order details`.OrderID = orders.OrderID
AND YEAR(OrderDate) = '1997'
GROUP BY Month(OrderDate);

/* EXERCICE 9 */
USE northwind;
SELECT MAX(OrderDate) AS "Date de dernière commande"
FROM customers, orders
WHERE CompanyName = "Du monde entier"
AND customers.CustomerID = orders.CustomerID;


/* EXERCICE 10 */    
USE northwind;
SELECT ROUND(AVG(DATEDIFF(ShippedDate, OrderDate))) AS "Délai moyen de livraison"
FROM orders;
