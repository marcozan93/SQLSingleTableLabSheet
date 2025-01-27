-- Playground for testing code

SELECT * FROM Sale;

The subquery should be a less efficient query than a join
SELECT DISTINCT ItemName FROM Sale WHERE DepartmentName IN (SELECT DepartmentName FROM Department WHERE DepartmentFloor=2);

SELECT DISTINCT ItemName
FROM Sale, Department
WHERE Sale.DepartmentName = Department.DepartmentName AND Department.DepartmentFloor = 2;


