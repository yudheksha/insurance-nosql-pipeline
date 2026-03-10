WITH raw AS (
SELECT
claim_type,
claim_id,
customer_id,
date::date AS claim_date,
amount::float AS amount,
is_fraud::Boolean AS is_fraud

FROM {{ source('snowflake','claims')}}

)

SELECT * FROM raw