SELECT a.name, b.bonus
FROM Employee a
LEFT JOIN bonus b on a.empId=b.empId
WHERE b.bonus<1000 or b.bonus is null
