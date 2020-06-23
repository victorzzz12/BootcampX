SELECT cohorts.name, COUNT(students.*) as student_count
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
GROUP BY cohorts.id
HAVING COUNT(students.*) >= 18
ORDER BY cohorts.id, COUNT(students);