### 练习一: 各部门工资最高的员工（难度：中等）

创建Employee 表，包含所有员工信息，每个员工有其对应的 Id, salary 和 department Id。

```plain
+----+-------+--------+--------------+
| Id | Name  | Salary | DepartmentId |
+----+-------+--------+--------------+
| 1  | Joe   | 70000  | 1            |
| 2  | Henry | 80000  | 2            |
| 3  | Sam   | 60000  | 2            |
| 4  | Max   | 90000  | 1            |
+----+-------+--------+--------------+
```
创建Department 表，包含公司所有部门的信息。
```plain
+----+----------+
| Id | Name     |
+----+----------+
| 1  | IT       |
| 2  | Sales    |
+----+----------+
```
编写一个 SQL 查询，找出每个部门工资最高的员工。例如，根据上述给定的表格，Max 在 IT 部门有最高工资，Henry 在 Sales 部门有最高工资。
```plain
+------------+----------+--------+
| Department | Employee | Salary |
+------------+----------+--------+
| IT         | Max      | 90000  |
| Sales      | Henry    | 80000  |
+------------+----------+--------+
```

### 解析
完整 sql 语句可参考 [sectionA_1.sql](https://github.com/hd2yao/learn-sql/blob/master/datawhale/wonderful-sql/sectionA-1/sectionA_1.sql)

如果存在多位相同最高薪资的员工，也可查询出来

#### 方法一：使用窗口函数
1. 按照部门分类，对薪资排序
```mysql
rank() over ( PARTITION BY emp.departmentid ORDER BY emp.salary DESC ) AS rank_no
```
2. 在外再包一层 SELECT，根据排序结果筛选 '排名为 1' 的数据
```mysql
WHERE rank_no = 1
```
> 注：可使用 `dense_rank()` 也可使用 `rank()`
> 
> **`rank()`** 函数：计算排序时，如果存在相同位次的记录，则会跳过之后的位次
> 
> 例，有 3 条记录排在第一位时：1、1、1、4......
> 
> **`dense_rank()`** 函数：即使存在相同位次的记录，也不会跳过之后的位次
> 
> 例，有 3 条记录排在第一位时，1、1、1、2......


#### 方法二：使用子查询
1. 先查询到每个部门中最大的薪资
```mysql
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
```
2. 关联到员工表，根据最大薪资找到对应的员工
```mysql
LEFT JOIN employee emp ON emp.salary = tmp.salary
```

#### 方法三：使用 in
1. 关联 employee 和 department 两张表，直接筛选出符合条件的数据
```mysql
WHERE ( e.Salary, e.DepartmentId ) IN 
      ( SELECT MAX( Salary ), DepartmentId FROM Employee GROUP BY DepartmentId )
```