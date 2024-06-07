-- Section A

-- 练习一：各部门工资最高的员工
DROP TABLE if EXISTS Employee;
CREATE TABLE Employee (
    id INT,
    name VARCHAR(20),
    salary INT,
    departmentid INT,
    PRIMARY KEY (id)
);

INSERT INTO Employee VALUES(1,'Joe',70000,1);
INSERT INTO Employee VALUES(2,'Henry',80000,2);
INSERT INTO Employee VALUES(3,'Sam',60000,2);
INSERT INTO Employee VALUES(4,'Max',90000,1);

DROP TABLE if EXISTS Department;
CREATE TABLE Department(
    id INT,
    name VARCHAR(20),
    PRIMARY KEY (id)
);

INSERT INTO Department VALUES(1,'IT');
INSERT INTO Department VALUES(2,'Sales');