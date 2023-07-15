USE myfirstmysql;
SELECT 
	Jurisdiction,
    `Week of Allocations`,
	SUM(`1st Dose Allocations`) AS dose_1_sum,
	SUM(`2nd Dose Allocations`) AS dose_2_sum
FROM 
	(SELECT *
	FROM moderna_allocation
	UNION ALL
	SELECT *
	FROM pfizer_allocation) AS total_allocations
GROUP BY Jurisdiction, `Week of Allocations`