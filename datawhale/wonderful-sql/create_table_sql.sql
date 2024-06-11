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

-- 练习四：连续出现的数字
DROP TABLE if exists logs;
CREATE TABLE logs(
    id INT,
    num INT,
    PRIMARY KEY (id)
);

INSERT INTO logs VALUES (1, 1);
INSERT INTO logs VALUES (2, 1);
INSERT INTO logs VALUES (3, 1);
INSERT INTO logs VALUES (4, 2);
INSERT INTO logs VALUES (5, 1);
INSERT INTO logs VALUES (6, 2);
INSERT INTO logs VALUES (7, 2);

-- 练习五：树节点
DROP TABLE if exists tree;
CREATE TABLE tree(
    id INT,
    p_id INT,
    PRIMARY KEY (id)
);

INSERT INTO tree VALUES (1, null);
INSERT INTO tree VALUES (2, 1);
INSERT INTO tree VALUES (3, 1);
INSERT INTO tree VALUES (4, 2);
INSERT INTO tree VALUES (5, 2);

-- 练习六：至少有五名直接下属的经理
DROP TABLE if exists Employee2;
CREATE TABLE Employee2(
    id INT,
    name varchar(20),
    department varchar(20),
    managerid INT,
    PRIMARY KEY (id)
);

INSERT INTO Employee2 VALUES (101,  'John', 'A', null);
INSERT INTO Employee2 VALUES (102,   'Dan', 'A', 101);
INSERT INTO Employee2 VALUES (103, 'James', 'A', 101);
INSERT INTO Employee2 VALUES (104,   'Amy', 'A', 101);
INSERT INTO Employee2 VALUES (105,  'Anne', 'A', 101);
INSERT INTO Employee2 VALUES (106,   'Ron', 'B', 101);