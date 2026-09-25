CREATE TABLE telecom_customers (
    customer_id BIGINT,
    telecom_partner VARCHAR(100),
    gender VARCHAR(20),
    age INT,
    state VARCHAR(100),
    city VARCHAR(100),
    pincode VARCHAR(20),
    date_of_registration DATE,
    num_dependents INT,
    estimated_salary NUMERIC,
    calls_made NUMERIC,
    sms_sent NUMERIC,
    data_used NUMERIC,
    churn INT
);