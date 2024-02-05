-- Выбор периодов постоянства остатков
WITH BalancePeriods AS (
    SELECT
        acc AS FROM_ACC,
        dt_from,
        COALESCE(LEAD(dt_from, 1, '3000-01-01') OVER (PARTITION BY acc ORDER BY dt_from), '3000-01-01') AS dt_to,
        balance
    FROM (
        SELECT
            acc,
            dt AS dt_from,
            LEAD(dt, 1, '3000-01-01') OVER (PARTITION BY acc ORDER BY dt) AS dt_to,
            balance
        FROM (
            SELECT
                FROM_ACC AS acc,
                TDATE AS dt,
                SUM(AMOUNT) OVER (PARTITION BY FROM_ACC ORDER BY TDATE) AS balance
            FROM Transfers

            UNION

            SELECT
                TO_ACC AS acc,
                TDATE AS dt,
                SUM(-AMOUNT) OVER (PARTITION BY TO_ACC ORDER BY TDATE) AS balance
            FROM Transfers
        ) AS Combined
    ) AS Periods
)

-- Оператор выбора
SELECT
    FROM_ACC AS acc,
    dt_from,
    dt_to,
    balance
FROM BalancePeriods;