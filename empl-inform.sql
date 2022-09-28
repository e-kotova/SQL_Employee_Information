select *
from employee;

SELECT sub.employee_id AS subordinate_id,
       sub.first_name AS subordinate_first_name,
       sub.last_name AS subordinate_last_name,
	   boss.employee_id AS boss_id,
       boss.first_name AS boss_first_name,
       boss.last_name AS boss_last_name
FROM employee sub
JOIN employee boss
ON sub.manager_id = boss.employee_id
ORDER BY boss_id;