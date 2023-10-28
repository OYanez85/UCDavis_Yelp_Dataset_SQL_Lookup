'''10. Find the top 10 users with the most fans:'''

	SQL code used to arrive at answer:
	SELECT name, fans
	FROM user
	ORDER BY fans DESC
	LIMIT 10;

	Copy and Paste the Result Below:


	| name      | fans |
	+-----------+------+
	| Amy       |  503 |
	| Mimi      |  497 |
	| Harald    |  311 |
	| Gerald    |  253 |
	| Christine |  173 |
	| Lisa      |  159 |
	| Cat       |  133 |
	| William   |  126 |
	| Fran      |  124 |
	| Lissa     |  120 |
	+-----------+------+
