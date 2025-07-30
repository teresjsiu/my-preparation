-- tbl: Weather
-- col: id
-- condi: higher temperatures compared to its previous dates

-- prev recordDate 가 없는 경우도 고려
SELECT
    id AS Id
FROM (
    SELECT
        *,
        LAG(recordDate) OVER(ORDER BY recordDate) AS prev_date,
        LAG(temperature) OVER(ORDER BY recordDate) AS prev_temp
    FROM Weather

) AS t
WHERE 1=1
    AND DATEDIFF(recordDate, prev_date) = 1
    AND prev_temp < temperature
