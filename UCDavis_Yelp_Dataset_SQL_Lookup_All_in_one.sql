'''Part 1: Yelp Dataset Profiling and Understanding

1. Profile the data by finding the total number of records for each of the tables below:'''

i. Attribute table = 10000
'''SQL code used to arrive at answer:'''
SELECT COUNT(*) AS TotalRecords
FROM Attribute;

ii. Business table = 10000
'''SQL code used to arrive at answer:'''
SELECT COUNT(*) AS TotalRecords
FROM business;

iii. Category table =10000
'''SQL code used to arrive at answer:'''
SELECT COUNT(*) AS TotalRecords
FROM category;

iv. Checkin table = 10000
'''SQL code used to arrive at answer:'''
SELECT COUNT(*) AS TotalRecords
FROM checkin;

v. elite_years table = 10000
'''SQL code used to arrive at answer:'''
SELECT COUNT(*) AS TotalRecords
FROM elite_years;

vi. friend table = 10000
'''SQL code used to arrive at answer:'''
SELECT COUNT(*) AS TotalRecords
FROM friend;

vii. hours table = 10000
'''SQL code used to arrive at answer:'''
SELECT COUNT(*) AS TotalRecords
FROM hours;

viii. photo table = 10000
'''SQL code used to arrive at answer:'''
SELECT COUNT(*) AS TotalRecords
FROM photo;

ix. review table = 10000
'''SQL code used to arrive at answer:'''
SELECT COUNT(*) AS TotalRecords
FROM review;

x. tip table = 10000
'''SQL code used to arrive at answer:'''
SELECT COUNT(*) AS TotalRecords
FROM tip;

xi. user table = 10000
'''SQL code used to arrive at answer:'''
SELECT COUNT(*) AS TotalRecords
FROM user;

'''2. Find the total distinct records by either the foreign key or primary key for each table. If two foreign keys are listed in the table, please specify which foreign key.'''

i. Business = 10000
'''SQL code used to arrive at answer:'''

SELECT
    COUNT(DISTINCT id) AS TotalDistinctPrimaryKeys
FROM Business;

ii. Hours = 1562
'''SQL code used to arrive at answer:'''

SELECT
    COUNT(DISTINCT business_id) AS TotalDistinctPrimaryKeys
FROM hours;

iii. Category = 2643
'''SQL code used to arrive at answer:'''

SELECT
    COUNT(DISTINCT business_id) AS TotalDistinctPrimaryKeys
FROM category;

iv. Attribute = 1115
'''SQL code used to arrive at answer:'''

SELECT
    COUNT(DISTINCT business_id) AS TotalDistinctPrimaryKeys
FROM attribute;

v. Review =
Primary keys: id = 1000;
ForeignKey1: business_id = 8090;
ForeignKey2: user_id = 9581;

'''SQL code used to arrive at answer:'''

SELECT
    COUNT(DISTINCT id) AS TotalDistinctPrimaryKeys,
    COUNT(DISTINCT business_id) AS TotalDistinctForeignKey1,
    COUNT(DISTINCT user_id) AS TotalDistinctForeignKey2
FROM review;

vi. Checkin = 493;
'''SQL code used to arrive at answer:'''

SELECT
    COUNT(DISTINCT business_id) AS TotalDistinctPrimaryKeys
FROM checkin;

vii. Photo =
TotalDistinctPrimaryKeys (id) = 10000;
TotalDistinctBusinessIds (business_id) = 649;

'''SQL code used to arrive at answer:'''

SELECT
    COUNT(DISTINCT id) AS TotalDistinctPrimaryKeys,
    COUNT(DISTINCT business_id) AS TotalDistinctBusinessIds
FROM photo;

viii. Tip =
TotalDistinctForeignKey1 (user_id) = 537;
TotalDistinctForeignKey2 (business_id) = 3979;

'''SQL code used to arrive at answer:'''

SELECT
    COUNT(DISTINCT user_id) AS TotalDistinctForeignKey1,
    COUNT(DISTINCT business_id) AS TotalDistinctForeignKey2
FROM attribute;

ix. User = 10000

'''SQL code used to arrive at answer:'''

SELECT
    COUNT(DISTINCT id) AS TotalDistinctPrimaryKeys
FROM user;

x. Friend = 11

'''SQL code used to arrive at answer:'''

SELECT
    COUNT(DISTINCT user_id) AS TotalDistinctForeignKeys
FROM friend;

xi. Elite_years = 2780

'''SQL code used to arrive at answer:'''

SELECT
    COUNT(DISTINCT user_id) AS TotalDistinctForeignKeys
FROM elite_years;

Note: Primary Keys are denoted in the ER-Diagram with a yellow key icon.

'''3. Are there any columns with null values in the Users table? Indicate "yes," or "no."'''

	Answer: No


	'''SQL code used to arrive at answer:'''

SELECT
    CASE WHEN id IS NULL THEN 'id: Null' ELSE 'id: Not Null' END AS idStatus,
    CASE WHEN name IS NULL THEN 'name: Null' ELSE 'name: Not Null' END AS nameStatus,
    CASE WHEN review_count IS NULL THEN 'review_count: Null' ELSE 'review_count: Not Null' END AS review_countStatus,
    CASE WHEN yelping_since IS NULL THEN 'yelping_since: Null' ELSE 'yelping_since: Not Null' END AS yelping_sinceStatus,
    CASE WHEN useful IS NULL THEN 'useful: Null' ELSE 'useful: Not Null' END AS usefulStatus,
    CASE WHEN funny IS NULL THEN 'funny: Null' ELSE 'funny: Not Null' END AS funnyStatus
    CASE WHEN cool IS NULL THEN 'cool: Null' ELSE 'cool: Not Null' END AS coolStatus
    CASE WHEN fans IS NULL THEN 'fans: Null' ELSE 'fans: Not Null' END AS fansStatus
    CASE WHEN average_stars IS NULL THEN 'average_stars: Null' ELSE 'average_stars: Not Null' END AS average_starsStatus
    CASE WHEN compliment_hot IS NULL THEN 'compliment_hot: Null' ELSE 'compliment_hot: Not Null' END AS compliment_hotStatus
    CASE WHEN compliment_more IS NULL THEN 'compliment_more: Null' ELSE 'compliment_more: Not Null' END AS compliment_moreStatus
    CASE WHEN compliment_profile IS NULL THEN 'compliment_profile: Null' ELSE 'compliment_profile: Not Null' END AS compliment_profileStatus
    CASE WHEN compliment_cute IS NULL THEN 'compliment_cute: Null' ELSE 'compliment_cute: Not Null' END AS compliment_cuteStatus
    CASE WHEN compliment_list IS NULL THEN 'compliment_list: Null' ELSE 'compliment_list: Not Null' END AS compliment_listStatus
    CASE WHEN compliment_note IS NULL THEN 'compliment_note: Null' ELSE 'compliment_note: Not Null' END AS compliment_noteStatus
    CASE WHEN compliment_plain IS NULL THEN 'compliment_plain: Null' ELSE 'compliment_plain: Not Null' END AS compliment_plainStatus
    CASE WHEN compliment_cool IS NULL THEN 'compliment_cool: Null' ELSE 'compliment_cool: Not Null' END AS compliment_coolStatus
    CASE WHEN compliment_funny IS NULL THEN 'compliment_funny: Null' ELSE 'compliment_funny: Not Null' END AS compliment_funnyStatus
    CASE WHEN compliment_writer IS NULL THEN 'compliment_writer: Null' ELSE 'compliment_writer: Not Null' END AS compliment_writerStatus
    CASE WHEN compliment_photos IS NULL THEN 'compliment_photos: Null' ELSE 'compliment_photos: Not Null' END AS compliment_photosStatus
FROM user;

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

'''5. List the cities with the most reviews in descending order:'''

    	'''SQL code used to arrive at answer:'''

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

'''6. Find the distribution of star ratings to the business in the following cities:'''

      i. Avon

      SQL code used to arrive at answer:
      SELECT stars AS star_rating, COUNT(*) AS count, city
      FROM business
      WHERE city = 'Avon'
      GROUP BY stars
      ORDER BY star_rating;

      Copy and Paste the Resulting Table Below (2 columns â€“ star rating and count):
      star_rating | count | city |
      +-------------+-------+------+
      |         1.5 |     1 | Avon |
      |         2.5 |     2 | Avon |
      |         3.5 |     3 | Avon |
      |         4.0 |     2 | Avon |
      |         4.5 |     1 | Avon |
      |         5.0 |     1 | Avon |
      +-------------+-------+------+

      ii. Beachwood

      SQL code used to arrive at answer:
      SQL code used to arrive at answer:
      SELECT stars AS star_rating, COUNT(*) AS count, city
      FROM business
      WHERE city = 'Beachwood'
      GROUP BY stars
      ORDER BY star_rating;

      Copy and Paste the Resulting Table Below (2 columns â€“ star rating and count):
      | star_rating | count | city      |
      +-------------+-------+-----------+
      |         2.0 |     1 | Beachwood |
      |         2.5 |     1 | Beachwood |
      |         3.0 |     2 | Beachwood |
      |         3.5 |     2 | Beachwood |
      |         4.0 |     1 | Beachwood |
      |         4.5 |     2 | Beachwood |
      |         5.0 |     5 | Beachwood |
      +-------------+-------+-----------+

'''7. Find the top 3 users based on their total number of reviews:'''

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

'''8. Does posing more reviews correlate with more fans?

      	Please explain your findings and interpretation of the results:'''

        SELECT name, fans, review_count
        FROM user
        ORDER BY review_count DESC, fans DESC;

        | name      | fans | review_count |
        +-----------+------+--------------+
        | Gerald    |  253 |         2000 |
        | Sara      |   50 |         1629 |
        | Yuri      |   76 |         1339 |
        | .Hon      |  101 |         1246 |
        | William   |  126 |         1215 |
        | Harald    |  311 |         1153 |
        | eric      |   16 |         1116 |
        | Roanna    |  104 |         1039 |
        | Mimi      |  497 |          968 |
        | Christine |  173 |          930 |
        | Ed        |   38 |          904 |
        | Nicole    |   43 |          864 |
        | Fran      |  124 |          862 |
        | Mark      |  115 |          861 |
        | Christina |   85 |          842 |
        | Dominic   |   37 |          836 |
        | Lissa     |  120 |          834 |
        | Lisa      |  159 |          813 |
        | Alison    |   61 |          775 |
        | Sui       |   78 |          754 |
        | Tim       |   35 |          702 |
        | L         |   10 |          696 |
        | Angela    |  101 |          694 |
        | Crissy    |   25 |          676 |
        | Lyn       |   45 |          675 |
        +-----------+------+--------------+
        (Output limit exceeded, 25 of 10000 total rows shown)

        The findings suggets that there is not a clear relationship between having more reviews and having more fans.


'''9. Are there more reviews with the word "love" or with the word "hate" in them?'''

      	Answer: there are 454 reviews with the word love and 32 reviews with the word hate.


      	'''SQL code used to arrive at answer:'''
        SELECT
          SUM(CASE WHEN LOWER(text) LIKE '%love%' THEN 1 ELSE 0 END) AS love_count,
          SUM(CASE WHEN LOWER(text) LIKE '%hate%' THEN 1 ELSE 0 END) AS hate_count
      FROM tip;

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

'''Part 2: Inferences and Analysis'''

        '''1. Pick one city and category of your choice and group the businesses in that
        city or category by their overall star rating. Compare the businesses with 2-3
        stars to the businesses with 4-5 stars and answer the following questions. Include your code.'''

        '''SQL code used for analysis:'''
        SELECT business.city, business.stars, category.category, business.is_open, business.review_count, hours.hours
        FROM business
        LEFT JOIN category ON business.id = category.business_id
        LEFT JOIN hours ON business.id = hours.business_id
        WHERE category.category = 'Restaurants' AND business.city = 'Phoenix'
        ORDER BY hours.hours DESC;

        '''i. Do the two groups you chose to analyze have a different distribution of hours?'''

        city    | stars | category    | is_open | review_count | hours                 |
        +---------+-------+-------------+---------+--------------+-----------------------+
        | Phoenix |   2.0 | Restaurants |       1 |            8 | Wednesday|5:00-23:00  |
        | Phoenix |   4.0 | Restaurants |       1 |          431 | Wednesday|11:00-22:00 |
        | Phoenix |   4.5 | Restaurants |       0 |            7 | Wednesday|11:00-18:00 |
        | Phoenix |   3.0 | Restaurants |       1 |           60 | Wednesday|11:00-0:00  |
        | Phoenix |   3.5 | Restaurants |       1 |           63 | Wednesday|10:00-22:00 |
        | Phoenix |   2.0 | Restaurants |       1 |            8 | Tuesday|5:00-23:00    |
        | Phoenix |   4.0 | Restaurants |       1 |          431 | Tuesday|11:00-22:00   |
        | Phoenix |   4.5 | Restaurants |       0 |            7 | Tuesday|11:00-18:00   |
        | Phoenix |   3.0 | Restaurants |       1 |           60 | Tuesday|11:00-0:00    |
        | Phoenix |   3.5 | Restaurants |       1 |           63 | Tuesday|10:00-22:00   |
        | Phoenix |   2.0 | Restaurants |       1 |            8 | Thursday|5:00-23:00   |
        | Phoenix |   3.0 | Restaurants |       1 |           60 | Thursday|11:00-2:00   |
        | Phoenix |   4.0 | Restaurants |       1 |          431 | Thursday|11:00-22:00  |
        | Phoenix |   4.5 | Restaurants |       0 |            7 | Thursday|11:00-18:00  |
        | Phoenix |   3.5 | Restaurants |       1 |           63 | Thursday|10:00-22:00  |
        | Phoenix |   3.0 | Restaurants |       1 |           60 | Sunday|9:00-0:00      |
        | Phoenix |   2.0 | Restaurants |       1 |            8 | Sunday|5:00-23:00     |
        | Phoenix |   4.5 | Restaurants |       0 |            7 | Sunday|13:00-16:00    |
        | Phoenix |   4.0 | Restaurants |       1 |          431 | Sunday|11:00-22:00    |
        | Phoenix |   3.5 | Restaurants |       1 |           63 | Sunday|10:00-22:00    |
        | Phoenix |   3.0 | Restaurants |       1 |           60 | Saturday|9:00-2:00    |
        | Phoenix |   2.0 | Restaurants |       1 |            8 | Saturday|5:00-0:00    |
        | Phoenix |   4.0 | Restaurants |       1 |          431 | Saturday|11:00-22:00  |
        | Phoenix |   4.5 | Restaurants |       0 |            7 | Saturday|11:00-18:00  |
        | Phoenix |   3.5 | Restaurants |       1 |           63 | Saturday|10:00-22:00  |
        +---------+-------+-------------+---------+--------------+-----------------------+
        (Output limit exceeded, 25 of 36 total rows shown)

        '''COMMENTS: The restaurant with more review-count , the reviews are normally done between 11:00_22:00 the whole week.
        The restaurant with 63 reviews, therevies ae normally done bwetween 10h-22h
        The restaurant with 7 reviews, the reviews are normally done between 11h-18h'''

        '''ii. Do the two groups you chose to analyze have a different number of reviews?'''
        +----------------------+----------------------+
        | avg_review_count_2_3 | avg_review_count_4_5 |
        +----------------------+----------------------+
        |               6.0923 |               16.869 |
        '''SQL code used for analysis:'''
        SELECT
            AVG(CASE WHEN stars BETWEEN 2 AND 3 THEN review_count ELSE 0 END) AS avg_review_count_2_3,
            AVG(CASE WHEN stars BETWEEN 4 AND 5 THEN review_count ELSE 0 END) AS avg_review_count_4_5
        FROM business;


        '''iii. Are you able to infer anything from the location data provided between these two groups? Explain.'''

        '''1. What are the average review counts for businesses with 2-3 stars and for businesses with 4-5 stars?'''
        '''SQL code used for analysis:'''
        SELECT
            AVG(CASE WHEN stars BETWEEN 2 AND 3 THEN review_count ELSE 0 END) AS avg_review_count_2_3,
            AVG(CASE WHEN stars BETWEEN 4 AND 5 THEN review_count ELSE 0 END) AS avg_review_count_4_5
        FROM business;
        '''RESULT:'''
        avg_review_count_2_3 | avg_review_count_4_5 |
        +----------------------+----------------------+
        |               6.0923 |               16.869 |
        '''COMMENT: More reviews are done in restaurants rated between 4 and 5'''

        '''2. What is the average star rating for businesses with 2-3 stars and for businesses with 4-5 stars?'''
        '''SQL code used for analysis:'''
        SELECT
            AVG(CASE WHEN stars BETWEEN 2 AND 3 THEN stars ELSE NULL END) AS avg_stars_2_3,
            AVG(CASE WHEN stars BETWEEN 4 AND 5 THEN stars ELSE NULL END) AS avg_stars_4_5
        FROM business;
        '''RESULT:'''
        +--------------------+-------------------+
        |      avg_stars_2_3 |     avg_stars_4_5 |
        +--------------------+-------------------+
        | 2.6455119214586253 | 4.456070287539936 |
        '''COMMENT: the average rating of the restaurants between 2-3 stars is: 2.6.
        The average rating of the restaurants rated between 4-5 stars is 4.45'''

        '''3. What is the distribution of business categories for these two star rating ranges?'''
        SELECT
            stars,
            category.category,
            COUNT(*) AS count
        FROM business
        LEFT JOIN category ON business.id = category.business_id
        WHERE stars BETWEEN 4 AND 5
        GROUP BY stars, category.category
        ORDER BY count DESC;

        '''RESULT:'''
        stars |               category | count |
        +-------+------------------------+-------+
        |   4.0 |                   None |  1963 |
        |   5.0 |                   None |  1533 |
        |   4.5 |                   None |  1414 |
        |   4.0 |            Restaurants |    22 |
        |   4.5 |               Shopping |     8 |
        |   4.0 |                   Food |     8 |
        |   4.0 |                   Bars |     6 |
        |   4.0 |              Nightlife |     6 |
        |   4.0 |               Shopping |     6 |
        |   5.0 |             Automotive |     5 |
        |   5.0 |       Health & Medical |     5 |
        |   5.0 |          Home Services |     5 |
        |   5.0 |               Shopping |     5 |
        |   4.5 |            Restaurants |     5 |
        |   4.0 |       Health & Medical |     5 |
        |   5.0 |          Beauty & Spas |     4 |
        |   5.0 |         Local Services |     4 |
        |   4.5 |          Home Services |     4 |
        |   4.0 | American (Traditional) |     4 |
        |   4.0 |                Mexican |     4 |
        |   5.0 |            Active Life |     3 |
        |   5.0 |          Chiropractors |     3 |
        |   5.0 |                   Food |     3 |
        |   4.5 |                   Food |     3 |
        |   4.5 |       Health & Medical |     3 |
        +-------+------------------------+-------+
        (Output limit exceeded, 25 of 271 total rows shown)
        '''COMMENT: There is a large proportion of restaurants rated between 4&5 which category is None. Within the categories that are present, the most popular are: Resaturants with 22, Shopping & Food with 8; Bars, Nightlife and Shopping with:6. In order to improve th results, it should be assigned a category for the None ones. '''
        -----------------------------------------------------------------------------------
        "2. Group business based on the ones that are open and the ones that are closed.
        What differences can you find between the ones that are still open and the ones
        that are closed? List at least two differences and the SQL code you used to arrive at your answer."

        "i. Difference 1:"
        What is the distribution of open and closed businesses within the two star rating ranges?
        '''COMMENT: Most open-count restaurants are between 3 and 5 stars'''

        "ii. Difference 2:"
        '''COMMENT: Most closed-count restaurants are between 3 and 4 stars'''

        '''SQL code used for analysis:'''
        SELECT
            stars,
            SUM(CASE WHEN is_open = 1 THEN 1 ELSE 0 END) AS open_count,
            SUM(CASE WHEN is_open = 0 THEN 1 ELSE 0 END) AS closed_count
        FROM business
        WHERE stars BETWEEN 2 AND 3
           OR stars BETWEEN 4 AND 5
        GROUP BY stars;
        '''RESULT:'''
        stars | open_count | closed_count |
        +-------+------------+--------------+
        |   2.0 |        472 |           94 |
        |   2.5 |        722 |          168 |
        |   3.0 |       1124 |          272 |
        |   4.0 |       1679 |          326 |
        |   4.5 |       1249 |          189 |
        |   5.0 |       1427 |          138 |
        +-------+------------+--------------+

        '''3. For this last part of your analysis, you are going to choose the type of analysis you want to conduct on the Yelp dataset and are going to prepare the data for analysis.

        Ideas for analysis include: Parsing out keywords and business attributes for sentiment analysis, clustering businesses to find commonalities or anomalies between them, predicting the overall star rating for a business, predicting the number of fans a user will have, and so on. These are just a few examples to get you started, so feel free to be creative and come up with your own problem you want to solve. Provide answers, in-line, to all of the following:

        i. Indicate the type of analysis you chose to do:
        '''i. Type of Analysis:
        For this analysis, I have chosen to perform sentiment analysis on Yelp business reviews to determine the overall sentiment (positive or negative) of customer reviews for various businesses. The goal is to understand the sentiment of customer feedback and identify patterns in review sentiment across different business categories.''''

        ii. Write 1-2 brief paragraphs on the type of data you will need for your analysis and why you chose that data:
        '''ii. Data Required and Rationale:
        To conduct sentiment analysis, I will need the following data:

        Business data: Including business ID, category, and location (city).
        Review data: Including review text, review rating (stars), and business ID.
        I chose this data because it allows me to analyze customer reviews for businesses in different categories and locations. By examining the text and star ratings of reviews, I can assess the sentiment and overall satisfaction expressed by customers. This analysis can be valuable for businesses to understand customer sentiment and make data-driven decisions for improvements.'''

        iii. Output of your finished dataset:
        iii. Output of Finished Dataset:
        The finished dataset will include the following columns:

        Business ID
        Business Category
        City
        Review Text
        Star Rating
        Sentiment (Positive, Negative, or Neutral)
        iv. SQL Code to Create the Final Dataset:
        To create the final dataset, I will need to extract relevant data from the "business" and "review" tables and perform sentiment analysis on the review text. Below is a simplified SQL code outline for this task:'''

        iv. Provide the SQL code you used to create your final dataset:
        -- Selecting relevant columns from the business and review tables
        SELECT b.id, c.category AS business_category, b.city, r.text AS Review_text, b.stars AS star_rating
        FROM business AS b
        INNER JOIN review AS r ON b.id = r.business_id
        INNER JOIN category AS c ON b.id = c.business_id;

        -- Adding a sentiment column based on sentiment analysis results
        -- The sentiment analysis part will depend on the specific tools or libraries used for sentiment analysis, such as Python's Natural Language Processing (NLP) libraries.

        -- Storing the final dataset in a table or exporting to a CSV or other format.
        -- This part depends on the database and tools you are using.

        -- Example sentiment analysis using Python's NLTK library (not SQL):
        -- Use Python to analyze the "review_text" column and add a "sentiment" column to the dataset.

        -- Store or export the final dataset for further analysis.
        The actual sentiment analysis part may involve using external tools or libraries, such as NLTK or other NLP libraries in a programming language like Python. This SQL code outlines the data retrieval and preparation steps in SQL, but the sentiment analysis itself typically requires using appropriate NLP tools and programming languages.
        '''RESULT'''
        id                     | business_category      | city         | Review_text |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | star_rating |
        +------------------------+------------------------+------------+------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+-------------+
        | 2skQeu3C36VCiB653MIfrw | Nightlife              | Phoenix    | My husband and I decided to come here for a Saturday date night. When considering our options, we were sold when we saw the bacon board on the menu. It did not disappoint! It was an excellent and delicious start to our nice (giant) dinner.                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |         4.0 |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | For our main course we had the BBQ sampler for two, as well as the shrimp and grits appetizer because I just couldn't help myself! The shrimp and grits were simply glorious. I may have preferred grilled or sautéed shrimp, rather than fried, but the other ingredients did a great job of balancing the richness of the fried shrimp and bacon. Marvelous.                                                                                                                                                                                                                                                                                                                                                         |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | The sampler was very good, but not amazing. I had been particularly looking forward to the turkey, but they had run out (something we weren't told until after the food was delivered and I inquired about it). The hot links were our least favorite - just not our thing, I guess. The pulled pork was pretty good, but the ribs and brisket were definitely the stars, and our favorites by a mile.                                                                                                                                                                                                                                                                                                                 |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | Since we brought up the missing turkey,  we were given a cobbler desert for free. That's about as much as I would pay for that dessert - $0 - as it tasted like hot, vaguely-fruity mush with a layer of raw flour on top. Whatever... they don't claim to be dessert experts, so what did I expect? I just know better for next time. ;)                                                                                                                                                                                                                                                                                                                                                                              |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | Atmosphere is great - cozy, clean and modern. Just hipster enough to feel cool, but not so much to make you feel uncomfortable if you didn't show up with facial hair or a vintage t-shirt. Service is not as attentive as I would prefer, but most likely due to having too much to do, as opposed to a lack of effort. Everyone was very nice.                                                                                                                                                                                                                                                                                                                                                                       |             |
        | 2skQeu3C36VCiB653MIfrw | Bars                   | Phoenix    | My husband and I decided to come here for a Saturday date night. When considering our options, we were sold when we saw the bacon board on the menu. It did not disappoint! It was an excellent and delicious start to our nice (giant) dinner.                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |         4.0 |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | For our main course we had the BBQ sampler for two, as well as the shrimp and grits appetizer because I just couldn't help myself! The shrimp and grits were simply glorious. I may have preferred grilled or sautéed shrimp, rather than fried, but the other ingredients did a great job of balancing the richness of the fried shrimp and bacon. Marvelous.                                                                                                                                                                                                                                                                                                                                                         |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | The sampler was very good, but not amazing. I had been particularly looking forward to the turkey, but they had run out (something we weren't told until after the food was delivered and I inquired about it). The hot links were our least favorite - just not our thing, I guess. The pulled pork was pretty good, but the ribs and brisket were definitely the stars, and our favorites by a mile.                                                                                                                                                                                                                                                                                                                 |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | Since we brought up the missing turkey,  we were given a cobbler desert for free. That's about as much as I would pay for that dessert - $0 - as it tasted like hot, vaguely-fruity mush with a layer of raw flour on top. Whatever... they don't claim to be dessert experts, so what did I expect? I just know better for next time. ;)                                                                                                                                                                                                                                                                                                                                                                              |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | Atmosphere is great - cozy, clean and modern. Just hipster enough to feel cool, but not so much to make you feel uncomfortable if you didn't show up with facial hair or a vintage t-shirt. Service is not as attentive as I would prefer, but most likely due to having too much to do, as opposed to a lack of effort. Everyone was very nice.                                                                                                                                                                                                                                                                                                                                                                       |             |
        | 2skQeu3C36VCiB653MIfrw | Food                   | Phoenix    | My husband and I decided to come here for a Saturday date night. When considering our options, we were sold when we saw the bacon board on the menu. It did not disappoint! It was an excellent and delicious start to our nice (giant) dinner.                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |         4.0 |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | For our main course we had the BBQ sampler for two, as well as the shrimp and grits appetizer because I just couldn't help myself! The shrimp and grits were simply glorious. I may have preferred grilled or sautéed shrimp, rather than fried, but the other ingredients did a great job of balancing the richness of the fried shrimp and bacon. Marvelous.                                                                                                                                                                                                                                                                                                                                                         |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | The sampler was very good, but not amazing. I had been particularly looking forward to the turkey, but they had run out (something we weren't told until after the food was delivered and I inquired about it). The hot links were our least favorite - just not our thing, I guess. The pulled pork was pretty good, but the ribs and brisket were definitely the stars, and our favorites by a mile.                                                                                                                                                                                                                                                                                                                 |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | Since we brought up the missing turkey,  we were given a cobbler desert for free. That's about as much as I would pay for that dessert - $0 - as it tasted like hot, vaguely-fruity mush with a layer of raw flour on top. Whatever... they don't claim to be dessert experts, so what did I expect? I just know better for next time. ;)                                                                                                                                                                                                                                                                                                                                                                              |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | Atmosphere is great - cozy, clean and modern. Just hipster enough to feel cool, but not so much to make you feel uncomfortable if you didn't show up with facial hair or a vintage t-shirt. Service is not as attentive as I would prefer, but most likely due to having too much to do, as opposed to a lack of effort. Everyone was very nice.                                                                                                                                                                                                                                                                                                                                                                       |             |
        | 2skQeu3C36VCiB653MIfrw | Restaurants            | Phoenix    | My husband and I decided to come here for a Saturday date night. When considering our options, we were sold when we saw the bacon board on the menu. It did not disappoint! It was an excellent and delicious start to our nice (giant) dinner.                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |         4.0 |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | For our main course we had the BBQ sampler for two, as well as the shrimp and grits appetizer because I just couldn't help myself! The shrimp and grits were simply glorious. I may have preferred grilled or sautéed shrimp, rather than fried, but the other ingredients did a great job of balancing the richness of the fried shrimp and bacon. Marvelous.                                                                                                                                                                                                                                                                                                                                                         |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | The sampler was very good, but not amazing. I had been particularly looking forward to the turkey, but they had run out (something we weren't told until after the food was delivered and I inquired about it). The hot links were our least favorite - just not our thing, I guess. The pulled pork was pretty good, but the ribs and brisket were definitely the stars, and our favorites by a mile.                                                                                                                                                                                                                                                                                                                 |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | Since we brought up the missing turkey,  we were given a cobbler desert for free. That's about as much as I would pay for that dessert - $0 - as it tasted like hot, vaguely-fruity mush with a layer of raw flour on top. Whatever... they don't claim to be dessert experts, so what did I expect? I just know better for next time. ;)                                                                                                                                                                                                                                                                                                                                                                              |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | Atmosphere is great - cozy, clean and modern. Just hipster enough to feel cool, but not so much to make you feel uncomfortable if you didn't show up with facial hair or a vintage t-shirt. Service is not as attentive as I would prefer, but most likely due to having too much to do, as opposed to a lack of effort. Everyone was very nice.                                                                                                                                                                                                                                                                                                                                                                       |             |
        | 2skQeu3C36VCiB653MIfrw | Smokehouse             | Phoenix    | My husband and I decided to come here for a Saturday date night. When considering our options, we were sold when we saw the bacon board on the menu. It did not disappoint! It was an excellent and delicious start to our nice (giant) dinner.                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |         4.0 |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | For our main course we had the BBQ sampler for two, as well as the shrimp and grits appetizer because I just couldn't help myself! The shrimp and grits were simply glorious. I may have preferred grilled or sautéed shrimp, rather than fried, but the other ingredients did a great job of balancing the richness of the fried shrimp and bacon. Marvelous.                                                                                                                                                                                                                                                                                                                                                         |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | The sampler was very good, but not amazing. I had been particularly looking forward to the turkey, but they had run out (something we weren't told until after the food was delivered and I inquired about it). The hot links were our least favorite - just not our thing, I guess. The pulled pork was pretty good, but the ribs and brisket were definitely the stars, and our favorites by a mile.                                                                                                                                                                                                                                                                                                                 |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | Since we brought up the missing turkey,  we were given a cobbler desert for free. That's about as much as I would pay for that dessert - $0 - as it tasted like hot, vaguely-fruity mush with a layer of raw flour on top. Whatever... they don't claim to be dessert experts, so what did I expect? I just know better for next time. ;)                                                                                                                                                                                                                                                                                                                                                                              |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | Atmosphere is great - cozy, clean and modern. Just hipster enough to feel cool, but not so much to make you feel uncomfortable if you didn't show up with facial hair or a vintage t-shirt. Service is not as attentive as I would prefer, but most likely due to having too much to do, as opposed to a lack of effort. Everyone was very nice.                                                                                                                                                                                                                                                                                                                                                                       |             |
        | 2skQeu3C36VCiB653MIfrw | American (Traditional) | Phoenix    | My husband and I decided to come here for a Saturday date night. When considering our options, we were sold when we saw the bacon board on the menu. It did not disappoint! It was an excellent and delicious start to our nice (giant) dinner.                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |         4.0 |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | For our main course we had the BBQ sampler for two, as well as the shrimp and grits appetizer because I just couldn't help myself! The shrimp and grits were simply glorious. I may have preferred grilled or sautéed shrimp, rather than fried, but the other ingredients did a great job of balancing the richness of the fried shrimp and bacon. Marvelous.                                                                                                                                                                                                                                                                                                                                                         |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | The sampler was very good, but not amazing. I had been particularly looking forward to the turkey, but they had run out (something we weren't told until after the food was delivered and I inquired about it). The hot links were our least favorite - just not our thing, I guess. The pulled pork was pretty good, but the ribs and brisket were definitely the stars, and our favorites by a mile.                                                                                                                                                                                                                                                                                                                 |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | Since we brought up the missing turkey,  we were given a cobbler desert for free. That's about as much as I would pay for that dessert - $0 - as it tasted like hot, vaguely-fruity mush with a layer of raw flour on top. Whatever... they don't claim to be dessert experts, so what did I expect? I just know better for next time. ;)                                                                                                                                                                                                                                                                                                                                                                              |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | Atmosphere is great - cozy, clean and modern. Just hipster enough to feel cool, but not so much to make you feel uncomfortable if you didn't show up with facial hair or a vintage t-shirt. Service is not as attentive as I would prefer, but most likely due to having too much to do, as opposed to a lack of effort. Everyone was very nice.                                                                                                                                                                                                                                                                                                                                                                       |             |
        | 2skQeu3C36VCiB653MIfrw | Barbeque               | Phoenix    | My husband and I decided to come here for a Saturday date night. When considering our options, we were sold when we saw the bacon board on the menu. It did not disappoint! It was an excellent and delicious start to our nice (giant) dinner.                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |         4.0 |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | For our main course we had the BBQ sampler for two, as well as the shrimp and grits appetizer because I just couldn't help myself! The shrimp and grits were simply glorious. I may have preferred grilled or sautéed shrimp, rather than fried, but the other ingredients did a great job of balancing the richness of the fried shrimp and bacon. Marvelous.                                                                                                                                                                                                                                                                                                                                                         |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | The sampler was very good, but not amazing. I had been particularly looking forward to the turkey, but they had run out (something we weren't told until after the food was delivered and I inquired about it). The hot links were our least favorite - just not our thing, I guess. The pulled pork was pretty good, but the ribs and brisket were definitely the stars, and our favorites by a mile.                                                                                                                                                                                                                                                                                                                 |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | Since we brought up the missing turkey,  we were given a cobbler desert for free. That's about as much as I would pay for that dessert - $0 - as it tasted like hot, vaguely-fruity mush with a layer of raw flour on top. Whatever... they don't claim to be dessert experts, so what did I expect? I just know better for next time. ;)                                                                                                                                                                                                                                                                                                                                                                              |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | Atmosphere is great - cozy, clean and modern. Just hipster enough to feel cool, but not so much to make you feel uncomfortable if you didn't show up with facial hair or a vintage t-shirt. Service is not as attentive as I would prefer, but most likely due to having too much to do, as opposed to a lack of effort. Everyone was very nice.                                                                                                                                                                                                                                                                                                                                                                       |             |
        | 24Td_CQH1bonWKff1rt2vg | Breakfast & Brunch     | Phoenix    | Been eating at Matt's Big Breakfast since they were at their original location downtown.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |         4.0 |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | Always busy with a line to get in but great places are like that so if you want to eat quickly go to Dennys so you don't have to wait so long.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | Everything is made from scratch and fresh. The Waffles are outstanding as are the Griddlecakes.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | I am a really big fan of the Big Butter Burger also. The burger is just plain good and when they bring it to you, you will be happy.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | If you can, make sure you get some bacon here which is very good.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | Service is good and the new location is spacious compared to the original restaurant.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | What is nice is that the small feel still transferred to the current location.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | Would recommend going there either early in the morning or later prior to closing to minimize your wait.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | Can't wait to go back!                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |             |
        | 24Td_CQH1bonWKff1rt2vg | Restaurants            | Phoenix    | Been eating at Matt's Big Breakfast since they were at their original location downtown.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |         4.0 |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | Always busy with a line to get in but great places are like that so if you want to eat quickly go to Dennys so you don't have to wait so long.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | Everything is made from scratch and fresh. The Waffles are outstanding as are the Griddlecakes.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | I am a really big fan of the Big Butter Burger also. The burger is just plain good and when they bring it to you, you will be happy.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | If you can, make sure you get some bacon here which is very good.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | Service is good and the new location is spacious compared to the original restaurant.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | What is nice is that the small feel still transferred to the current location.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | Would recommend going there either early in the morning or later prior to closing to minimize your wait.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |             |
        |                        |                        |            |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |             |
        |                        |                        |            | Can't wait to go back!                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |             |
        | 20ib4z2Yo2wlfARFMcFwSQ | Desserts               | Pittsburgh | On a recent visit to Pgh I was happily surprised to find that numerous cupcake shops have sprung up since my last visit. Being the cupcake fanatic that I am, I tried Dozen, Coco's and Vanilla Pastry Studio. Although I think all three cupcake shops could have come up with better names, the VPS had the best products hands down. Over my 2 month visit, I tried their vanilla/vanilla, vanilla caramel, carrot, mocha and choc peanut butter. They were all incredible with the vanilla caramel being my favorite. And the atmosphere inside the shop is adorable, it made me want to skip around like I won the Willy Wonka golden ticket, and after tasting one of their cupcakes, into another world I went. |         4.5 |
        | 20ib4z2Yo2wlfARFMcFwSQ | Food                   | Pittsburgh | On a recent visit to Pgh I was happily surprised to find that numerous cupcake shops have sprung up since my last visit. Being the cupcake fanatic that I am, I tried Dozen, Coco's and Vanilla Pastry Studio. Although I think all three cupcake shops could have come up with better names, the VPS had the best products hands down. Over my 2 month visit, I tried their vanilla/vanilla, vanilla caramel, carrot, mocha and choc peanut butter. They were all incredible with the vanilla caramel being my favorite. And the atmosphere inside the shop is adorable, it made me want to skip around like I won the Willy Wonka golden ticket, and after tasting one of their cupcakes, into another world I went. |         4.5 |
        | -Eu04UHRqmGGyvYRDY8-tg | Shopping               | Cleveland  | If you have the chance to go to the West Side market - do it! Even if you aren't there to grocery shop there are plenty of made-to-order items. If you have time be sure to get a gyro from Steve's or a crepe from Crepes de Luxe. This place is truly unique! Even if you don't buy anything, it is a sight to see.                                                                                                                                                                                                                                                                                                                                                                                                  |         4.5 |
        | -Eu04UHRqmGGyvYRDY8-tg | Food                   | Cleveland  | If you have the chance to go to the West Side market - do it! Even if you aren't there to grocery shop there are plenty of made-to-order items. If you have time be sure to get a gyro from Steve's or a crepe from Crepes de Luxe. This place is truly unique! Even if you don't buy anything, it is a sight to see.                                                                                                                                                                                                                                                                                                                                                                                                  |         4.5 |
        | -Eu04UHRqmGGyvYRDY8-tg | Seafood Markets        | Cleveland  | If you have the chance to go to the West Side market - do it! Even if you aren't there to grocery shop there are plenty of made-to-order items. If you have time be sure to get a gyro from Steve's or a crepe from Crepes de Luxe. This place is truly unique! Even if you don't buy anything, it is a sight to see.                                                                                                                                                                                                                                                                                                                                                                                                  |         4.5 |
        | -Eu04UHRqmGGyvYRDY8-tg | Fruits & Veggies       | Cleveland  | If you have the chance to go to the West Side market - do it! Even if you aren't there to grocery shop there are plenty of made-to-order items. If you have time be sure to get a gyro from Steve's or a crepe from Crepes de Luxe. This place is truly unique! Even if you don't buy anything, it is a sight to see.                                                                                                                                                                                                                                                                                                                                                                                                  |         4.5 |
        | -Eu04UHRqmGGyvYRDY8-tg | Ethnic Food            | Cleveland  | If you have the chance to go to the West Side market - do it! Even if you aren't there to grocery shop there are plenty of made-to-order items. If you have time be sure to get a gyro from Steve's or a crepe from Crepes de Luxe. This place is truly unique! Even if you don't buy anything, it is a sight to see.                                                                                                                                                                                                                                                                                                                                                                                                  |         4.5 |
        | -Eu04UHRqmGGyvYRDY8-tg | Market Stalls          | Cleveland  | If you have the chance to go to the West Side market - do it! Even if you aren't there to grocery shop there are plenty of made-to-order items. If you have time be sure to get a gyro from Steve's or a crepe from Crepes de Luxe. This place is truly unique! Even if you don't buy anything, it is a sight to see.                                                                                                                                                                                                                                                                                                                                                                                                  |         4.5 |
        | -Eu04UHRqmGGyvYRDY8-tg | Farmers Market         | Cleveland  | If you have the chance to go to the West Side market - do it! Even if you aren't there to grocery shop there are plenty of made-to-order items. If you have time be sure to get a gyro from Steve's or a crepe from Crepes de Luxe. This place is truly unique! Even if you don't buy anything, it is a sight to see.                                                                                                                                                                                                                                                                                                                                                                                                  |         4.5 |
        | -Eu04UHRqmGGyvYRDY8-tg | Specialty Food         | Cleveland  | If you have the chance to go to the West Side market - do it! Even if you aren't there to grocery shop there are plenty of made-to-order items. If you have time be sure to get a gyro from Steve's or a crepe from Crepes de Luxe. This place is truly unique! Even if you don't buy anything, it is a sight to see.                                                                                                                                                                                                                                                                                                                                                                                                  |         4.5 |
        | -Eu04UHRqmGGyvYRDY8-tg | Public Markets         | Cleveland  | If you have the chance to go to the West Side market - do it! Even if you aren't there to grocery shop there are plenty of made-to-order items. If you have time be sure to get a gyro from Steve's or a crepe from Crepes de Luxe. This place is truly unique! Even if you don't buy anything, it is a sight to see.                                                                                                                                                                                                                                                                                                                                                                                                  |         4.5 |
        | -Eu04UHRqmGGyvYRDY8-tg | Meat Shops             | Cleveland  | If you have the chance to go to the West Side market - do it! Even if you aren't there to grocery shop there are plenty of made-to-order items. If you have time be sure to get a gyro from Steve's or a crepe from Crepes de Luxe. This place is truly unique! Even if you don't buy anything, it is a sight to see.                                                                                                                                                                                                                                                                                                                                                                                                  |         4.5 |
        | -Eu04UHRqmGGyvYRDY8-tg | Shopping               | Cleveland  | I love this market, crowded, fresh and cheap veggies! Nice collection of bread, cheese and butter.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |         4.5 |
        |                        |                        |            | The only thing about it is the close early!                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |             |
        | -Eu04UHRqmGGyvYRDY8-tg | Food                   | Cleveland  | I love this market, crowded, fresh and cheap veggies! Nice collection of bread, cheese and butter.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |         4.5 |
        |                        |                        |            | The only thing about it is the close early!                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |             |
        | -Eu04UHRqmGGyvYRDY8-tg | Seafood Markets        | Cleveland  | I love this market, crowded, fresh and cheap veggies! Nice collection of bread, cheese and butter.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |         4.5 |
        |                        |                        |            | The only thing about it is the close early!                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |             |
        | -Eu04UHRqmGGyvYRDY8-tg | Fruits & Veggies       | Cleveland  | I love this market, crowded, fresh and cheap veggies! Nice collection of bread, cheese and butter.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |         4.5 |
        |                        |                        |            | The only thing about it is the close early!                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |             |
