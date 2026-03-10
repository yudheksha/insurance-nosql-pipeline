SELECT 
MONTH(claim_date) AS Claims_month,
claim_type,
COUNT(*) AS claims_count,
SUM(amount) AS total_claims_amount,
SUM(CASE WHEN is_fraud THEN 1 ELSE 0 END) AS fraud_count
FROM {{ ref('stg_claims') }}
GROUP BY 1,2
ORDER BY 1