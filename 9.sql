'''9. Are there more reviews with the word "love" or with the word "hate" in them?'''

	Answer: there are 454 reviews with the word love and 32 reviews with the word hate. 


	'''SQL code used to arrive at answer:'''
  SELECT
    SUM(CASE WHEN LOWER(text) LIKE '%love%' THEN 1 ELSE 0 END) AS love_count,
    SUM(CASE WHEN LOWER(text) LIKE '%hate%' THEN 1 ELSE 0 END) AS hate_count
FROM tip;
