# Write your MySQL query statement below

-- tbl: Queue
-- col: person_name
-- condi: last person that can fit on the bus without exceeding the weight limit

WITH BASE AS (
    SELECT
        *,
        SUM(weight) OVER (ORDER BY turn ASC ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS total_weight
    FROM Queue
)

SELECT
    person_name
FROM BASE
WHERE 1=1
    AND total_weight <= 1000
ORDER BY total_weight DESC
LIMIT 1
