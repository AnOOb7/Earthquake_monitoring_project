-- Gold Table 2 earthquake_by_magnitude --
CREATE OR REPLACE TABLE earthquake_by_magnitude AS
SELECT
  CASE
    WHEN CAST(magnitude AS DOUBLE) < 2 THEN 'Micro'
    WHEN CAST(magnitude AS DOUBLE) < 4 THEN 'Minor'
    WHEN CAST(magnitude AS DOUBLE) < 6 THEN 'Moderate'
    WHEN CAST(magnitude AS DOUBLE) < 7 THEN 'Strong'
    ELSE 'Major'
  END AS magnitude_bucket,
  COUNT(*) AS total_events
FROM dev_project.silver.earthquake_silver
GROUP BY magnitude_bucket;

DESCRIBE TABLE dev_project.silver.earthquake_silver;

SELECT * FROM earthquake_by_magnitude;
