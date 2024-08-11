WITH input AS (
    SELECT '2020-05-31' AS start, '2020-08-31' AS end
)
SELECT 
    *
FROM 
    calendar, input
WHERE 
    -- the whole trick is to provide the opposite : start = input.End, end = Input.Start
    startD <= input.end
    AND 
    endD >= input.start
;
