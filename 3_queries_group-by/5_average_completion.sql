SELECT students.name AS student, SUM(assignment_submissions.duration)/COUNT(assignment_submissions.*) AS average_assignment_duration
FROM students
JOIN assignment_submissions
ON students.id = assignment_submissions.student_id
WHERE students.end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;
