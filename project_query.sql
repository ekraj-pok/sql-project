
# show number of badges offer by each school.
SELECT school_id, school, COUNT(name) AS badge_count
FROM project.badges
GROUP BY school_id, school
ORDER BY badge_count DESC;




# show the number branch for each school.
SELECT school_id, school, count(city_name) AS city
FROM project.locations
GROUP BY school_id, school
ORDER BY city DESC;

# what is the average overall rating, course rating, support rating  of each school
SELECT school_id, school, 
		ROUND(AVG(overall_rating), 2) AS avg_overall,
        ROUND(AVG(course_rating), 2) AS avg_course,
        ROUND(AVG(support_rating),2) AS avg_support,
        COUNT(overall_rating) AS overall_count, 
        COUNT(course_rating) AS course_count, 
        COUNT(support_rating) AS support_count
FROM project.comments
GROUP BY school_id, school
ORDER BY avg_overall DESC
LIMIT 5;


# what is the average overall rating, course rating, support rating  of each school where student name is not anonymuous
SELECT school_id, school, 
		ROUND(AVG(overall_rating), 2) AS avg_overalL,
        ROUND(AVG(course_rating), 2) AS avg_course,
        ROUND(AVG(support_rating), 2) AS avg_support,
        COUNT(overall_rating) AS overall_count, 
        COUNT(course_rating) AS course_count, 
        COUNT(support_rating) AS support_count
FROM project.comments
WHERE student_name <> "Anonymous"
GROUP BY school_id, school
ORDER BY avg_overall DESC
LIMIT 5;

# WhAT is the rating of last 8 years for ironhack

SELECT school_id, school, graduation_year, 
		ROUND(AVG(overall_rating), 2) AS avg_overalL,
        ROUND(AVG(course_rating), 2) AS avg_course,
        ROUND(AVG(support_rating), 2) AS avg_support,
        COUNT(overall_rating) AS overall_count, 
        COUNT(course_rating) AS course_count, 
        COUNT(support_rating) AS support_count
FROM project.comments
WHERE (graduation_year BETWEEN 2014 AND 2023) AND (school_id  = 10828)
GROUP BY school_id, school, graduation_year
ORDER BY school ASC, graduation_year desc;

# What was the ratings 5 years ago for those schools:

SELECT school_id, school, graduation_year, 
		ROUND(AVG(overall_rating), 2) AS avg_overalL,
        ROUND(AVG(course_rating), 2) AS avg_course,
        ROUND(AVG(support_rating), 2) AS avg_support,
        COUNT(overall_rating) AS overall_count, 
        COUNT(course_rating) AS course_count, 
        COUNT(support_rating) AS support_count
FROM project.comments
WHERE (graduation_year BETWEEN 2014 AND 2017 ) AND (school_id  =  10828)
GROUP BY school_id, school, graduation_year
ORDER BY school ASC, graduation_year desc;

# which course has more impact in declining ratings for ironhack:

SELECT school_id, school, course_name, 
		ROUND(AVG(overall_rating), 2) AS avg_overalL,
        ROUND(AVG(course_rating), 2) AS avg_course,
        ROUND(AVG(support_rating), 2) AS avg_support,
        COUNT(overall_rating) AS overall_count, 
        COUNT(course_rating) AS course_count, 
        COUNT(support_rating) AS support_count
FROM project.comments
WHERE school_id = 10828 AND (course_name = "ux/ui" or course_name = "web development" or course_name = "data analytics")
GROUP BY school_id, school, course_name;

# review tag per course if rating less than 3:
select review_tag, course_name, graduation_year
FROM project.comments
WHERE overall_rating < 3 AND school_id = 10828
ORDER BY graduation_year DESC;



	












