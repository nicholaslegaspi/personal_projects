WITH main_data AS( --Creates another table to reference
SELECT * FROM bike_share_yr_0
UNION --Joins the two tables
SELECT * FROM bike_share_yr_1)

SELECT 
dteday,
season,
a.yr,
weekday,
hr,rider_type,
riders,
price,
COGS,
riders * price as revenue, --conducts a calculation to create a new column
riders * price - COGS as profit
FROM main_data a --allows us to reference the table as "a" now
LEFT JOIN cost_table b --allows us to reference the table as "b" now
ON a.yr = b.yr; 
