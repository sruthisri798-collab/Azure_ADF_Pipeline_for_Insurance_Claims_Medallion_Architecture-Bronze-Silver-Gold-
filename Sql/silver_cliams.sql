DROP TABLE IF EXISTS dbo.silver_insurance;

SELECT
    *,
    CASE 
        WHEN UPPER(LTRIM(RTRIM(fraud_reported)))='Y' THEN 1
        WHEN UPPER(LTRIM(RTRIM(fraud_reported)))='N' THEN 0
        ELSE NULL
    END AS fraud_flag,
    SYSUTCDATETIME() AS load_ts
INTO dbo.silver_insurance
FROM dbo.bronze_insurance;
