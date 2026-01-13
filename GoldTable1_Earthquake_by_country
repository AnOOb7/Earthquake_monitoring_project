--Create a gold table for earthquake_by_country --
CREATE OR REPLACE TABLE dev_project.gold.earthquake_by_country AS
SELECT
  CASE
    WHEN place IS NULL THEN 'Unknown'
    WHEN SIZE(SPLIT(place, ',')) = 1 THEN TRIM(place)
    ELSE TRIM(SPLIT(place, ',')[SIZE(SPLIT(place, ',')) - 1])
  END AS country,
  COUNT(*) AS earthquake_count
FROM dev_project.silver.earthquake_silver
GROUP BY
  CASE
    WHEN place IS NULL THEN 'Unknown'
    WHEN SIZE(SPLIT(place, ',')) = 1 THEN TRIM(place)
    ELSE TRIM(SPLIT(place, ',')[SIZE(SPLIT(place, ',')) - 1])
  END;


  SELECT *
FROM dev_project.gold.earthquake_by_country
WHERE country IS NULL;

SELECT * FROM dev_project.gold.earthquake_by_country ORDER BY earthquake_count DESC;
