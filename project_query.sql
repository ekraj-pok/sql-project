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








