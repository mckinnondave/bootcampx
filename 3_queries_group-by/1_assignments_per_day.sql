SELECT assignments.day, COUNT(assignments.*) 
FROM assignments
GROUP BY day
ORDER BY day;