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

-- 练习二：换座位
DROP TABLE if exists seat;
CREATE TABLE seat(
    id INT,
    student VARCHAR(20),
    PRIMARY KEY (id)
);

INSERT INTO seat VALUES(1,'Abbot');
INSERT INTO seat VALUES(2,'Doris');
INSERT INTO seat VALUES(3,'Emerson');
INSERT INTO seat VALUES(4,'Green');
INSERT INTO seat VALUES(5,'Jeames');

-- 练习三：分数排名
DROP TABLE if exists score;
CREATE TABLE score(
    class INT,
    score_avg INT,
    PRIMARY KEY (class)
);

INSERT INTO score VALUES(1, 93);
INSERT INTO score VALUES(2, 93);
INSERT INTO score VALUES(3, 93);
INSERT INTO score VALUES(4, 91);