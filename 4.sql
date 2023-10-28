'''4. For each table and column listed below, display the smallest (minimum), largest (maximum), and average (mean) value for the following fields:'''

	i. Table: Review, Column: Stars

		min:1 	max:5		avg:3.7082
'''SQL code used to arrive at answer:'''

		SELECT
		    MIN(Stars) AS min,
		    MAX(Stars) AS max,
		    AVG(Stars) AS avg
		FROM Review;


	ii. Table: Business, Column: Stars

		min:1.0		max:5.0		avg:3.6549
'''SQL code used to arrive at answer:'''
		SELECT
		    MIN(Stars) AS min,
		    MAX(Stars) AS max,
		    AVG(Stars) AS avg
		FROM Business;

	iii. Table: Tip, Column: Likes

		min:0		max:2		avg:0.0144
'''SQL code used to arrive at answer:'''
		SELECT
				MIN(Likes) AS min,
				MAX(Likes) AS max,
				AVG(Likes) AS avg
		FROM Tip;

	iv. Table: Checkin, Column: Count

		min:1		max:53		avg:1.9414
'''SQL code used to arrive at answer:'''
		SELECT
				MIN(Count) AS min,
				MAX(Count) AS max,
				AVG(Count) AS avg
		FROM Checkin;

	v. Table: User, Column: Review_count

		min:0		max:2000		avg:24.2995
'''SQL code used to arrive at answer:'''
		SELECT
				MIN(Review_count) AS min,
				MAX(Review_count) AS max,
				AVG(Review_count) AS avg
		FROM User;
