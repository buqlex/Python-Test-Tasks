-- SQL #2. Требуется оценить эффективность продавцов.
-- Создайте запрос, который вернёт количество и сумму продаж для каждого продавца,
-- а также ранжирует продавцов по количеству продаж и по сумме продаж

-- Результат запроса должен содержать столбцы id, name из таблицы employee,
-- а также столбцы:
-- sales_c - количество продаж,
-- sales_rank_c - ранг по количеству продаж,
-- sales_s - сумма продаж,
-- sales_rank_s - ранг по сумме продаж.

-- Временная таблица с суммарной информацией о продажах для каждого продавца
WITH SalesSummary AS (
    SELECT
        e.ID AS EmployeeID,
        e.NAME AS EmployeeName,
        COUNT(s.ID) AS sales_count,
        SUM(s.PRICE) AS sales_sum
    FROM
        Employee e
    LEFT JOIN
        Sales s ON e.ID = s.EMPLOYEE_ID
    GROUP BY
        e.ID, e.NAME
)

-- Выборка результатов и добавление рангов для количества и суммы продаж
SELECT
    EmployeeID AS ID,
    EmployeeName AS NAME,
    sales_count,
    RANK() OVER (ORDER BY sales_count DESC) AS sales_rank_c,
    sales_sum,
    RANK() OVER (ORDER BY sales_sum DESC) AS sales_rank_s
FROM
    SalesSummary;