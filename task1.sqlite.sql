-- SQL #1. Требуется составить расписание случайных проверок.
-- Создайте оператор выбора, который выдаст 100 дат, начиная с текущей,
-- при этом каждая дата отличается от предыдущей на 2-7 дней.

-- Временная таблица с рекурсией
WITH RECURSIVE DateSequence AS (
    SELECT DATE('now') AS InspectionDate, 1 AS Iteration

    UNION ALL

    SELECT DATE(InspectionDate, '+' || (2 + (Iteration % 6)) || ' days'), Iteration + 1
    FROM DateSequence
    WHERE Iteration < 100
)

-- Оператор выбора
SELECT InspectionDate
FROM DateSequence
ORDER BY Iteration;