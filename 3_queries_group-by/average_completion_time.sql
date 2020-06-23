SELECT students.name, AVG(duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.id
ORDER BY AVG(duration) DESC;