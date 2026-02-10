BEGIN TRAN;

TRUNCATE TABLE dbo.gold_claims_kpi_by_state;

INSERT INTO dbo.gold_claims_kpi_by_state
(
  incident_state,
  total_claims,
  total_claim_amount,
  fraud_claims,
  fraud_rate
)
SELECT
  incident_state,
  COUNT(*) AS total_claims,
  SUM(TRY_CAST(total_claim_amount AS decimal(18,2))) AS total_claim_amount,
  SUM(TRY_CAST(fraud_flag AS int)) AS fraud_claims,
  CAST(
    1.0 * SUM(TRY_CAST(fraud_flag AS int)) / NULLIF(COUNT(*), 0)
    AS decimal(10,6)
  ) AS fraud_rate
FROM dbo.silver_insurance
GROUP BY incident_state;

COMMIT;
