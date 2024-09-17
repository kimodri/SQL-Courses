/*
CREATED BY: Kim Audrey Magan
CREATED ON: 09/11/2024
DESCRIPTION: This is a query that calculates:
	Grand total,
	Average,
	Minimum,
	Maximum, &
	Total number
*/

-- This query utilize aggregate functions
SELECT
	ROUND(SUM(total), 2) AS "Grand Total", -- Gets the sum of the total COLUMN
	ROUND(AVG(total), 2) AS Average, -- Gets the average and round to two decimals
	MIN(total) AS "Minimum Value", -- Gets the minimum value
	MAX(total) AS "Maximum Value", -- Gets the maximum value
	COUNT(total) AS "Total Number of Orders" -- Gets the total count of the orders
	
FROM
	Invoice;