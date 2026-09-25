--Rank telecom partners
SELECT
    telecom_partner,
    ROUND(100.0 * AVG(churn), 2) AS churn_rate,
    RANK() OVER (
        ORDER BY AVG(churn) DESC
    ) AS partner_rank
FROM telecom_customers
GROUP BY telecom_partner;

--Find high-risk customer groups
SELECT
    telecom_partner,
    state,
    COUNT(*) AS customers,
    ROUND(100.0 * AVG(churn), 2) AS churn_rate
FROM telecom_customers
GROUP BY telecom_partner, state
HAVING COUNT(*) >= 100
ORDER BY churn_rate DESC;