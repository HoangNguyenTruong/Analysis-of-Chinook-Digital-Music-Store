USE [Chinook]

ALTER TABLE InvoiceLine ADD TotalMoney DECIMAL(18,2);
UPDATE InvoiceLine SET TotalMoney = CAST(UnitPrice * Quantity AS DECIMAL(18,2));

--- Total Revenue
select sum(i.Total) as revenue
from Invoice i
--- Total Quantity
select sum(il.Quantity) as quantity
from InvoiceLine il
--- Total revenue, quantity by year
select YEAR(I.InvoiceDate) AS year, SUM(IL.Quantity) AS Total_Quantity, SUM(IL.TotalMoney) AS Total_Revenue
from Invoice I
join InvoiceLine IL on I.InvoiceId = IL.InvoiceId
group by YEAR(I.InvoiceDate)
order by year
--- Revenue and quantity by genere
WITH a AS (select g.Name,g.GenreId, t.TrackId
from Genre g
join Track t on g.GenreId = t.GenreId) 
select a.Name, SUM(i.TotalMoney) as Revenue,  sum(i.Quantity) as quantity
from InvoiceLine i
join a on a.TrackId = i.TrackId
group by a.Name
order by Revenue DESC
--- Revenue and quantity by MediaType
WITH a AS (select m.Name,t.MediaTypeId, t.TrackId
from MediaType m
join Track t on m.MediaTypeId = t.MediaTypeId)
select a.Name, SUM(i.TotalMoney) as Revenue, sum(i.Quantity) as quantity
from InvoiceLine i
join a on a.TrackId = i.TrackId
group by a.Name
order by SUM(i.TotalMoney) DESC

--- Revenue and quantity by country
select i.BillingCountry, sum(i.Total) as Revnue, SUM(il.quantity) as Quantity
from Invoice i
join InvoiceLine il on i.InvoiceId = il.InvoiceId
group by i.BillingCountry
order by SUM(i.Total) DESC

--- Top hits
select t.Name as TrackName, count(ii.Quantity) as UnitSold
from InvoiceLine ii
join Track t on ii.TrackId = t.TrackId
group by t.Name
Order by UnitSold DESC
--- Top artists
WITH cte1 AS (select Al.ArtistId, T.TrackId, Ar.Name
from Album Al
join Track T on T.AlbumId = Al.AlbumId
join Artist Ar on Al.ArtistId = Ar.ArtistId)
select cte1.Name, SUM(IL.Quantity) as SL, SUM(IL.TotalMoney) as TM
from InvoiceLine IL
join cte1 on IL.TrackId = cte1.trackID
group by cte1.Name
order by TM DESC, SL DESC
								--- Customer---
--- Customer Lifetime Value
select c.CustomerId, CONCAT(c.FirstName, ' ', C.LastName) As Fullname, SUM(Total) as ST
from Customer c
join Invoice I on C.CustomerId = I.CustomerId
group by C.CustomerId, CONCAT(c.FirstName, ' ', C.LastName)
order by ST DESC
--- Rentention rate
WITH cte1 AS (select I.CustomerId, count(I.InvoiceId) as rentention
from Invoice I
group by CustomerId
having count(I.InvoiceId) > 1)
select count(cte1.CustomerId)/COUNT(C.CustomerId) as RententionRate
---CONCAT(c.FirstName, ' ', C.LastName) as fullname, cte1.rentention
from Customer C 
join cte1 on C.CustomerId = cte1.CustomerId

									--- Product and artist---
--- Total artist
select count(A.ArtistId) as NumGenre
from Artist A
--- Total genre
select count(g.GenreId) as NumGenre
from Genre g
--- Total album track
select count(a.AlbumId) as NumAlbum
from Album a
--- Total track
select count(t.TrackId) as NumTrack
from Track t
--- Number of track in each album
select AlbumId, COUNT(t.TrackId) as TrackAlbum
from Track t
group by AlbumId
order by COUNT(t.TrackId) DESC
--- Min, max, avg of millisecond of a track 
select Max(t.Milliseconds) as MaxTime, MIN(t.Milliseconds) as MinTime, AVG(t.Milliseconds) as AVGTime
from Track t
--- Min, max, avg of bytes of a track 
SELECT Max(t.Bytes) as MaxBytes, MIN(t.Bytes) as MinBytes,AVG(CAST(t.Bytes AS BIGINT)) AS AvgBytes
FROM Track t

									---Query to find imformation---
--- Who buy from Iron Maiden (artits)
select CTE5.CustomerId,CONCAT(C.FirstName, ' ', C.LastName) As Fullname, SUM(CTE5.TotalMoney) as ST
from Customer C
join 
(select CTE4.InvoiceId, I.CustomerId,CTE4.TotalMoney
from Invoice I
join (
select IL.InvoiceId,IL.TotalMoney
from InvoiceLine IL
join (select T.TrackId
         from Track T
           join (select Al.AlbumId
			from Album Al
				join (select ArtistId
						from Artist Ar
							where Ar.Name = 'Iron Maiden') CTE1 on Al.ArtistId = CTE1.ArtistId) CTE2
							on CTE2.AlbumId = T.AlbumId) CTE3 
							on CTE3.TrackId = IL.TrackId) CTE4
							on CTE4.InvoiceId = I.InvoiceId) CTE5
							on CTE5.CustomerId = C.CustomerId
							group by  CTE5.CustomerId, CONCAT(C.FirstName, ' ', C.LastName)
							order by ST DESC







