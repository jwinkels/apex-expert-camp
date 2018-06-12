select s.LABEL, count(1)
FROM OCTB_TASKS t
JOIN OCTB_STATUS s ON (t.status_id = s.status_id)
GROUP BY s.LABEL;