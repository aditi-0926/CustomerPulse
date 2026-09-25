SELECT COUNT(*) AS total_rows
FROM telecom_customers;

SELECT *
FROM telecom_customers
WHERE calls_made < 0
   OR sms_sent < 0
   OR data_used < 0;

   SELECT
    COUNT(*) AS total_customers,
    COUNT(*) FILTER (WHERE churn = 1) AS churned_customers,
    COUNT(*) FILTER (WHERE churn = 0) AS active_customers
FROM telecom_customers;

--Overall customer statistics
SELECT
    COUNT(*) AS total_customers,
    SUM(churn) AS churned_customers,
    ROUND(100.0 * SUM(churn) / COUNT(*), 2) AS churn_rate
FROM telecom_customers;