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
