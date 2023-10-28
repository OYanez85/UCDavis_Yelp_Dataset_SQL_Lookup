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
