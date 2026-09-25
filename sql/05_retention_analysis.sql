--Retention View
CREATE VIEW retention_analysis AS
SELECT
    customer_id,
    telecom_partner,
    state,
    city,
    age,
    estimated_salary,
    calls_made,
    sms_sent,
    data_used,
    churn
FROM telecom_customers
WHERE churn = 1;

SELECT *
FROM retention_analysis
ORDER BY estimated_salary DESC;