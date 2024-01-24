SELECT a.project_id, round(Avg(b.experience_years),2) as average_years
FROM Project a
left join Employee b on a.employee_id=b.employee_id
group by a.project_id
