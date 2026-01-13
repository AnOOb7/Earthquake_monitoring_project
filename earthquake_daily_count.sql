-- Gold Table 3 for earthquake_daily_count --

CREATE OR REPLACE TABLE earthquake_daily AS
SELECT
  DATE(FROM_UNIXTIME(CAST(event_time AS BIGINT) / 1000)) AS event_date,
  COUNT(*) AS total_events
FROM dev_project.silver.earthquake_silver
GROUP BY DATE(FROM_UNIXTIME(CAST(event_time AS BIGINT) / 1000));

SELECT * FROM earthquake_daily;
