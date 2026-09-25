SELECT * FROM telecom_customers

--Churn by telecom partner
SELECT
    telecom_partner,
    COUNT(*) AS total_customers,
    SUM(churn) AS churned_customers,
    ROUND(100.0 * SUM(churn) / COUNT(*), 2) AS churn_rate
FROM telecom_customers
GROUP BY telecom_partner
ORDER BY churn_rate DESC;

--Churn by state
SELECT
    state,
    COUNT(*) AS total_customers,
    SUM(churn) AS churned_customers,
    ROUND(100.0 * SUM(churn) / COUNT(*), 2) AS churn_rate
FROM telecom_customers
GROUP BY state
ORDER BY churn_rate DESC;

--Age-group churn analysis
SELECT
    age_group,
    COUNT(*) AS customers,
    ROUND(100.0 * SUM(churn) / COUNT(*), 2) AS churn_rate
FROM telecom_customers
GROUP BY age_group
ORDER BY churn_rate DESC;

--High-usage customers
SELECT
    customer_id,
    telecom_partner,
    state,
    data_used,
    calls_made,
    sms_sent
FROM telecom_customers
WHERE data_used > (
    SELECT AVG(data_used)
    FROM telecom_customers
)
ORDER BY data_used DESC;
