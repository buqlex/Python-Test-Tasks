-- Сотрудники
CREATE TABLE IF NOT EXISTS Employee (
    ID INT PRIMARY KEY,
    NAME VARCHAR
);

-- Продажи
CREATE TABLE IF NOT EXISTS Sales (
    ID INT PRIMARY KEY,
    EMPLOYEE_ID INT,
    PRICE INT
);

-- Вставка данных
INSERT INTO Employee (ID, NAME) VALUES (1, 'Алексей');
INSERT INTO Employee (ID, NAME) VALUES (2, 'Вадим');
INSERT INTO Employee (ID, NAME) VALUES (3, 'Дмитрий');
INSERT INTO Employee (ID, NAME) VALUES (4, 'Александр');
INSERT INTO Employee (ID, NAME) VALUES (5, 'Евгений');
INSERT INTO Employee (ID, NAME) VALUES (6, 'Оксана');
INSERT INTO Employee (ID, NAME) VALUES (7, 'Владимир');
INSERT INTO Employee (ID, NAME) VALUES (8, 'Виктория');
INSERT INTO Employee (ID, NAME) VALUES (9, 'Алёна');
INSERT INTO Employee (ID, NAME) VALUES (10, 'Степан');

INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (1, 5, 404);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (2, 1, 4300);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (3, 5, 600);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (4, 1, 3800);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (5, 9, 900);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (6, 3, 450);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (7, 4, 3050);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (8, 3, 2055);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (9, 6, 1005);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (10, 4, 1200);

INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (11, 6, 700);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (12, 5, 800);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (13, 7, 900);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (14, 9, 950);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (15, 1, 1104);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (16, 8, 1200);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (17, 6, 1357);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (18, 9, 1400);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (19, 10, 1500);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (20, 4, 1600);

INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (21, 7, 1500);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (22, 10, 1300);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (23, 3, 2478);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (24, 1, 3456);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (25, 8, 2890);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (26, 2, 4567);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (27, 4, 3567);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (28, 3, 1890);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (29, 6, 2789);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (30, 4, 5000);

INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (31, 7, 3200);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (32, 5, 4100);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (33, 3, 2400);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (34, 5, 3300);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (35, 5, 2800);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (36, 7, 1900);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (37, 6, 3650);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (38, 7, 1700);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (39, 9, 4000);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (40, 7, 2800);

INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (41, 2, 2000);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (42, 8, 2750);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (43, 8, 3500);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (44, 1, 3100);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (45, 9, 4200);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (46, 9, 1900);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (47, 10, 3600);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (48, 5, 4300);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (49, 7, 2200);
INSERT INTO Sales (ID, EMPLOYEE_ID, PRICE) VALUES (50, 1, 3850);
