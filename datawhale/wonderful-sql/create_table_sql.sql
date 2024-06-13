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

-- 练习7：各部门前3高工资的员工（难度：中等）
-- employee 和 department

-- 练习八：平面上最近距离
DROP TABLE IF EXISTS point_2d;
CREATE TABLE point_2d (
    x INT,
    y INT
);

INSERT INTO point_2d VALUES(-1, -1);
INSERT INTO point_2d VALUES( 0,  0);
INSERT INTO point_2d VALUES(-1, -2);

-- 练习九：行程和用户
DROP TABLE if EXISTS Trips;
CREATE TABLE Trips(
    Id INT,
    Client_Id INT,
    Driver_Id INT,
    City_Id INT,
    Status VARCHAR(30),
    Request_at DATE,
    PRIMARY KEY (Id)
);

INSERT INTO Trips VALUES (1, 1, 10, 1, 'completed', '2013-10-1');
INSERT INTO Trips VALUES (2, 2, 11, 1, 'cancelled_by_driver', '2013-10-1');
INSERT INTO Trips VALUES (3, 3, 12, 6, 'completed', '2013-10-1');
INSERT INTO Trips VALUES (4, 4, 13, 6, 'cancelled_by_client', '2013-10-1');
INSERT INTO Trips VALUES (5, 1, 10, 1, 'completed', '2013-10-2');
INSERT INTO Trips VALUES (6, 2, 11, 6, 'completed', '2013-10-2');
INSERT INTO Trips VALUES (7, 3, 12, 6, 'completed', '2013-10-2');
INSERT INTO Trips VALUES (8, 2, 12, 12, 'completed', '2013-10-3');
INSERT INTO Trips VALUES (9, 3, 10, 12, 'completed', '2013-10-3');
INSERT INTO Trips VALUES (10, 4, 13, 12, 'cancelled_by_driver', '2013-10-3');


DROP TABLE if EXISTS Users ;
CREATE TABLE Users(
    Users_Id  INT,
    Banned    VARCHAR(30),
    Role      VARCHAR(30),
    PRIMARY KEY (Users_Id)
);

INSERT INTO Users VALUES (1,    'No',  'client');
INSERT INTO Users VALUES (2,    'Yes', 'client');
INSERT INTO Users VALUES (3,    'No',  'client');
INSERT INTO Users VALUES (4,    'No',  'client');
INSERT INTO Users VALUES (10,   'No',  'driver');
INSERT INTO Users VALUES (11,   'No',  'driver');
INSERT INTO Users VALUES (12,   'No',  'driver');
INSERT INTO Users VALUES (13,   'No',  'driver');

-- Section B

-- 练习一：行转列
DROP TABLE IF EXISTS `score2`;
CREATE TABLE `score2` (
    `name` varchar(20) DEFAULT NULL,
    `subject` varchar(20) DEFAULT NULL,
    `score` int DEFAULT NULL
);

INSERT INTO score2 VALUES('A', 'chinese', 99);
INSERT INTO score2 VALUES('A', 'math',    98);
INSERT INTO score2 VALUES('A', 'english', 97);
INSERT INTO score2 VALUES('B', 'chinese', 92);
INSERT INTO score2 VALUES('B', 'math',    91);
INSERT INTO score2 VALUES('B', 'english', 90);
INSERT INTO score2 VALUES('C', 'chinese', 88);
INSERT INTO score2 VALUES('C', 'math',    87);
INSERT INTO score2 VALUES('C', 'english', 86);

-- Section C

-- 练习一：行转列
DROP TABLE IF EXISTS row_col;
create table row_col(
    cdate date,
    result varchar(255)
);

insert into row_col values ('2021-01-01','胜');
insert into row_col values ('2021-01-01','负');
insert into row_col values ('2021-01-03','胜');
insert into row_col values ('2021-01-03','负');
insert into row_col values ('2021-01-01','胜');
insert into row_col values ('2021-01-03','负');