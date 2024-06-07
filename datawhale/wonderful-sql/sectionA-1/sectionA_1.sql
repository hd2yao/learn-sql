-- 方法一：使用窗口函数
SELECT
    department,
    employee,
    salary
FROM
    (
        SELECT
            dep.NAME AS department,
            emp.NAME AS employee,
            emp.salary AS salary,
            dense_rank() over ( PARTITION BY emp.departmentid ORDER BY emp.salary DESC ) AS rank_no
        FROM
            employee emp
                LEFT JOIN department dep ON emp.departmentid = dep.id
    ) tmp
WHERE
        rank_no = 1;

-- 方法二：使用子查询
SELECT
    tmp.NAME AS department,
    emp.NAME AS employee,
    tmp.salary AS salary
FROM
    (
        SELECT
            max( salary ) AS salary,
            departmentid,
            t.NAME
        FROM
            employee e
                LEFT JOIN department t ON e.departmentid = t.id
        GROUP BY
            departmentid,
            t.NAME
    ) tmp
        LEFT JOIN employee emp ON emp.salary = tmp.salary;

-- 方法三：使用 in
SELECT
    d.NAME AS Department,
    e.NAME AS Employee,
    e.Salary
FROM
    Employee e
        JOIN Department d ON e.DepartmentId = d.Id
WHERE
        ( e.Salary, e.DepartmentId ) IN ( SELECT MAX( Salary ), DepartmentId FROM Employee GROUP BY DepartmentId );