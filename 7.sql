7. Find the top 3 users based on their total number of reviews:

	SQL code used to arrive at answer:
	SELECT id, name, review_count
  FROM user
	ORDER BY review_count DESC
  LIMIT 3;

	Copy and Paste the Result Below:

  id                     | name      | review_count |
+------------------------+-----------+--------------+
| -G7Zkl1wIWBBmD0KRy_sCw | Gerald    |         2000 |
| -3s52C4zL_DHRK0ULG6qtg | Sara      |         1629 |
| -8lbUNlXVSoXqaRRiHiSNg | Yuri      |         1339 |
