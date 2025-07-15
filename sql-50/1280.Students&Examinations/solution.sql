SELECT s.student_id, s.student_name, subs.subject_name, COUNT(e.student_id) attended_exams
FROM Students s
CROSS JOIN Subjects subs
LEFT JOIN Examinations e
ON s.student_id = e.student_id
AND subs.subject_name = e.subject_name
GROUP BY s.student_id, s.student_name, subs.subject_name
ORDER BY s.student_id, s.student_name, subs.subject_name