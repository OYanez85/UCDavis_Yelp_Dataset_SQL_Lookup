2. Find the total distinct records by either the foreign key or primary key for each table. If two foreign keys are listed in the table, please specify which foreign key.

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
