-- This query is being ran to filter out other states & provide insight on Health Insurance Coverage for the state of IL. 
-- From this query I can conclude that the states decision to expand Medicaid in 2016 likely contributed to the decrease in uninsured rates and the increase in Medicaid enrollment.
SELECT * FROM marketdataresearchrelatingtomyorganization.`health coverage amongst states`
WHERE State = 'Illinois ';

-- Highest and Lowest income ranges, due to nature of imported data & income in ranges, this was the most effective way of showing this.
-- This tells me that more african americans struggle with their income than Hispanic, but overall both struggle. 
SELECT income_range, black_or_african_american, hispanic_or_latino
FROM `income and race`
WHERE income_range IN ('0 - $10,000', '$200,000 +');

-- Identifies Top 5 states with the highest increase in Medicaid enrollment between 2013 and 2016
-- Gives me insight on why these states may have a higher increase in obtaing insurance throughout the years
SELECT State, `Medicaid Enrollment Change (2013-2016)`
FROM `health coverage amongst states`
ORDER BY `Medicaid Enrollment Change (2013-2016)` DESC
LIMIT 5;

-- Calculate the average uninsured rate change across all states between 2010 and 2015
-- Provides inisght on insurnace coverage within all states / helps me dig futher into why things have changed
SELECT AVG(`Uninsured Rate Change (2010-2015)`) AS AverageUninsuredRateChange
FROM `health coverage amongst states`;

-- This query provides insights into the estimated number of uninsured individuals across different age groups and income brackets in Chicago.
-- A little  hard to follow due to mutiple tables that aren't directly related  but it shows me that although people are above the poverty line they still struggle to obtain insurance. Changed from % to numbers and I am unsure why.
SELECT * FROM  `selected characteristics of the uninsured in the united states`, `income and race`;
SELECT  t1.`Label (Grouping)` AS age_group, t2.income_range, t1.`Chicago city, Illinois Total Uninsured Estimate` * (t2.black_or_african_american + t2.hispanic_or_latino) AS total_uninsured_estimate
FROM `selected characteristics of the uninsured in the united states` AS t1
CROSS JOIN `income and race` AS t2
WHERE t1.`Label (Grouping)` LIKE '%years%'  -- Filter for age group labels
ORDER BY t1.`Chicago city, Illinois Total Uninsured Estimate` DESC;











