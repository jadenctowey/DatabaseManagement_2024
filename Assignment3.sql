-- Set 1 

SELECT Composer, AVG(Milliseconds) AS AverageDuration
FROM tracks
GROUP BY composer;

SELECT COUNT(DISTINCT CustomerID) AS UniqueCustomers
FROM customers;

SELECT MediaTypeId, GenreId, COUNT(*) AS TotalNumOfRecords, MAX(UnitPrice) AS MaxUnitPrice
FROM tracks
GROUP BY MediaTypeId, GenreId;

SELECT genres.Name AS GenreName, AVG(tracks.Milliseconds) AS AverageDuration
FROM tracks
JOIN genres ON tracks.GenreId = genres.GenreId
GROUP BY genres.Name;

SELECT artists.Name AS ArtistName, COUNT(albums.AlbumId) AS TotalAlbums
FROM artists
JOIN albums ON artists.artistId = albums.artistId
GROUP BY artists.Name;

SELECT BillingCity, COUNT(*) AS TotalInvoices
FROM invoices
WHERE BillingCountry = 'USA'
GROUP BY BillingCity;


-- Set 2

SELECT Composer, AVG(Milliseconds) AS AverageDuration
FROM tracks
WHERE Milliseconds < 375000
GROUP BY composer;

SELECT Composer, AVG(Milliseconds) AS AverageDuration
FROM tracks
GROUP BY composer
HAVING AVG(Milliseconds) < 375000;

SELECT BillingCountry
FROM invoices
GROUP BY BillingCountry
HAVING COUNT(*) < 10;

SELECT BillingCountry
FROM invoices
GROUP BY BillingCountry
HAVING COUNT(DISTINCT BillingCity) = 8;

SELECT BillingCountry, SUM(total) AS TotalAmount
FROM invoices
WHERE invoiceDate BETWEEN '2010-01-01' AND '2010-12-31'
GROUP BY BillingCountry
HAVING COUNT(*) > 5;

--Relational Algebra Form of 1.1, 1.2, 1.4, 2.2, 2.5 in seperate Doc.