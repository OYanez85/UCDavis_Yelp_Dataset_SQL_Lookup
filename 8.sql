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
