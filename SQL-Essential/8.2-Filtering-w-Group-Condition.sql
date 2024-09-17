/*
CREATED BY: Kim Audrey Magan
CREATED ON: 11/09/2024
DESCRIPTION: Manager asked as to present the average total of each Billing City
			 from highest to lowest.
*/

SELECT
	-- Here we just select the necessary fields
	DATE(InvoiceDate) AS Date,
	BillingCity AS Cities,
	ROUND(AVG(total), 2) AS "Average"
FROM 
	Invoice
GROUP BY -- We use the Group By clause when we want to group elements of the same value, in this case the BillingCity
	BillingCity
ORDER BY
	Average DESC;