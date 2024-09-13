/* 
Created by: Kim Audrey B. Magan
Created on: 05/09/24
Description: Practicing on CASE and END clauses
*/

/*
TODO: Create a category for each sale using the following.
WSDA Music: Sales Goal
Baseline Purchase - Between $0.99 and $1.00
Low Purchase - Between $2.00 and $6.99
Target Purchase - Between $7.00 and $15.00
Top Performer - Above $15.00
*/

-- CASE and END clauses are like multiple if statements in SQL
SELECT
	-- use the DATE() so that the time won't be presented
	DATE(i.InvoiceDate) AS "Date",
	i.BillingAddress AS "Billing Address",
	i.BillingCity AS "Billing City",
	total AS "Total",
	
	-- Once all the necessary fields are selected we can now use the CASE-END to have a field for categories
	CASE
		WHEN total BETWEEN 0.99 AND 1.00 THEN"Baseline" -- here you can also use symbols such as >=
		WHEN total BETWEEN 2.00 AND 6.99 THEN"Low"
		WHEN total BETWEEN 7.00 AND 15.00 THEN"Target"
		ELSE"Top"
	END AS "Purchase Category"
	
FROM 
	Invoice AS i
ORDER BY -- This is not included in the video, I just added this one because I think this will provide more info
	total DESC;