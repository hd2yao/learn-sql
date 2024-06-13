### 练习七：各部门前3高工资的员工（难度：中等）

将练习一中的 `employee` 表清空，重新插入以下数据（也可以复制练习一中的 `employee` 表，再插入第5、第6行数据）：

```plain
+----+-------+--------+--------------+
| Id | Name  | Salary | DepartmentId |
+----+-------+--------+--------------+
| 1  | Joe   | 70000  | 1            |
| 2  | Henry | 80000  | 2            |
| 3  | Sam   | 60000  | 2            |
| 4  | Max   | 90000  | 1            |
| 5  | Janet | 69000  | 1            |
| 6  | Randy | 85000  | 1            |
+----+-------+--------+--------------+
```
编写一个SQL 查询，找出每个部门工资前三高的员工。例如，根据上述给定的表格，查询结果应返回：
```plain
+------------+----------+--------+
| Department | Employee | Salary |
+------------+----------+--------+
| IT         | Max      | 90000  |
| IT         | Randy    | 85000  |
| IT         | Joe      | 70000  |
| Sales      | Henry    | 80000  |
| Sales      | Sam      | 60000  |
+------------+----------+--------+
```
此外，请考虑实现各部门前N高工资的员工功能。

### 解析
完整 sql 语句可参考 [sectionA_7.sql](https://github.com/hd2yao/learn-sql/blob/master/datawhale/wonderful-sql/sectionA-7/sectionA_7.sql)
