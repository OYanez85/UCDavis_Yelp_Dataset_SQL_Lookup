'''5. List the cities with the most reviews in descending order:

	SQL code used to arrive at answer:'''

	SELECT business.city, SUM(review_count) AS total_review_count
	FROM business
	GROUP BY business.city
	ORDER BY total_review_count DESC;


	'''Copy and Paste the Result Below:'''

	| city            | total_review_count |
	+-----------------+--------------------+
	| Las Vegas       |              82854 |
	| Phoenix         |              34503 |
	| Toronto         |              24113 |
	| Scottsdale      |              20614 |
	| Charlotte       |              12523 |
	| Henderson       |              10871 |
	| Tempe           |              10504 |
	| Pittsburgh      |               9798 |
	| Montréal        |               9448 |
	| Chandler        |               8112 |
	| Mesa            |               6875 |
	| Gilbert         |               6380 |
	| Cleveland       |               5593 |
	| Madison         |               5265 |
	| Glendale        |               4406 |
	| Mississauga     |               3814 |
	| Edinburgh       |               2792 |
	| Peoria          |               2624 |
	| North Las Vegas |               2438 |
	| Markham         |               2352 |
	| Champaign       |               2029 |
	| Stuttgart       |               1849 |
	| Surprise        |               1520 |
	| Lakewood        |               1465 |
	| Goodyear        |               1155 |
