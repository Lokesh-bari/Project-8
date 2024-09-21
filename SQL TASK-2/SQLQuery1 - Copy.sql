USE Workers;

CREATE TABLE WorkerTbl (
    WORKER_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    SALARY DECIMAL(10, 2),
    JOINING_DATE DATETIME,
    DEPARTMENT VARCHAR(50)
);
INSERT INTO WorkerTbl (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)
VALUES
    (1, 'Monika', 'Arora', 100000, '2014-02-20 09:00:00', 'HR'),
    (2, 'Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
    (3, 'Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
    (4, 'Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
    (5, 'Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
    (6, 'Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
    (7, 'Satish', 'Kumar', 5000, '2014-01-20 09:00:00', 'Account'),
    (8, 'Geetika', 'Chauhan', 90000, '2014-04-11 09:00:00', 'Admin');
SELECT * FROM WorkerTbl;

CREATE TABLE BonusTbl (
    WORKER_REF_ID INT,
    BONUS_DATE DATETIME,
    BONUS_AMOUNT DECIMAL(10, 2),
    FOREIGN KEY (WORKER_REF_ID) REFERENCES WorkerTbl(WORKER_ID)
);
INSERT INTO BonusTbl (WORKER_REF_ID, BONUS_DATE, BONUS_AMOUNT)
VALUES
    (1, '2016-02-20 00:00:00', 5000),
    (2, '2016-06-11 00:00:00', 3000),
    (3, '2016-02-20 00:00:00', 4000),
    (1, '2016-02-20 00:00:00', 4500),
    (2, '2016-06-11 00:00:00', 3500);
SELECT * FROM BonusTbl;

CREATE TABLE Title (
    WORKER_REF_ID INT,
    WORKER_TITLE VARCHAR(50),
    AFFECTED_FROM DATETIME,
    FOREIGN KEY (WORKER_REF_ID) REFERENCES WorkerTbl(WORKER_ID)
);
INSERT INTO Title (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM)
VALUES
    (1, 'Manager', '2016-02-20 00:00:00'),
    (2, 'Executive', '2016-06-11 00:00:00'),
    (8, 'Executive', '2016-06-11 00:00:00'),
    (5, 'Manager', '2016-06-11 00:00:00'),
    (4, 'Asst. Manager', '2016-06-11 00:00:00'),
    (7, 'Executive', '2016-06-11 00:00:00'),
    (6, 'Lead', '2016-06-11 00:00:00'),
    (3, 'Lead', '2016-06-11 00:00:00');
SELECT * FROM Title;