# BharatTelco Analytics
## Indian Telecom Customer Churn & Retention Intelligence

An end-to-end data analytics and machine learning project for analyzing customer churn, identifying high-risk customers, and developing data-driven retention strategies for an Indian telecom customer base.

---

## 📌 Project Overview

Customer churn is an important business problem for telecom companies because losing existing customers can affect customer growth and long-term business performance.

This project analyzes an Indian telecom customer dataset containing **243K+ customer records** to understand churn behavior across demographics, customer usage patterns, telecom partners, states and cities.

The project combines:

- Python for data cleaning and exploratory analysis
- SQL/PostgreSQL for business analytics
- Machine Learning for churn prediction
- Customer segmentation for behavioral analysis
- Retention prioritization for identifying customers requiring attention
- Power BI for interactive business intelligence and visualization

The final output is a **3-page Power BI dashboard** supported by a machine learning churn prediction pipeline and SQL analytics layer.

---

## 🎯 Business Problem

Telecom companies need to understand:

- Which customers are more likely to churn?
- Which customer segments show higher churn?
- Which telecom partners have higher churn rates?
- Which geographic regions have higher churn?
- Which customers should be prioritized for retention?
- What type of retention action can be recommended for different customer groups?

This project attempts to answer these questions using customer demographics, usage behavior and machine learning-based churn probabilities.

---

## 🎯 Project Objectives

1. Clean and prepare the telecom customer dataset.
2. Analyze customer demographics and usage behavior.
3. Calculate and analyze customer churn rates.
4. Identify customer segments based on engagement and usage.
5. Build a machine learning model to estimate churn probability.
6. Categorize customers into relative risk levels.
7. Create a retention priority score.
8. Generate recommended retention actions.
9. Perform SQL-based business analysis.
10. Build an interactive Power BI dashboard.

---

## 📊 Dataset

The project uses an Indian Telecom Churn dataset containing:

- **243,553 customers**
- **14 original attributes**

### Important Features

| Feature | Description |
|---|---|
| customer_id | Unique customer identifier |
| telecom_partner | Telecom service provider |
| gender | Customer gender |
| age | Customer age |
| state | Customer state |
| city | Customer city |
| pincode | Customer pincode |
| date_of_registration | Customer registration date |
| num_dependents | Number of dependents |
| estimated_salary | Estimated customer salary |
| calls_made | Number of calls made |
| sms_sent | Number of SMS sent |
| data_used | Data usage |
| churn | Customer churn indicator |

---

## 🧹 Data Cleaning

The dataset was inspected for missing values, invalid values and inconsistent usage records.

Negative values were identified in:

- `calls_made`
- `sms_sent`
- `data_used`

These values were treated as invalid usage records rather than converting them using absolute values.

Invalid usage values were replaced with missing values and subsequently imputed using the median of the corresponding feature.

Additional features were engineered for analysis, including:

- Registration year
- Registration month
- Age groups
- Salary groups
- Data usage groups
- Engagement score
- Engagement level

---

## 🔎 Exploratory Data Analysis

The exploratory analysis examines customer behavior from multiple perspectives.

### Analysis Areas

- Overall churn distribution
- Churn rate by age group
- Churn rate by data usage
- Churn rate by engagement level
- Churn by telecom partner
- Churn by state and city
- Customer registration trends
- Customer segment distribution
- Relationship between customer usage metrics
- High-risk customer characteristics

---

## 👥 Customer Segmentation

Customers were segmented using behavioral and churn-related characteristics.

An engagement score was created using normalized:

- Calls made
- SMS sent
- Data used

Customers were then categorized into segments such as:

- Highly Engaged but At Risk
- Low Engagement and At Risk
- Loyal High-Engagement Customer
- Low Engagement Loyal Customer
- Medium Engagement Customer

These segments help translate customer behavior into potential retention strategies.

---

## 🤖 Machine Learning

### Model Used

**Logistic Regression**

The model predicts the probability that a customer will churn.

### Features Used

- Age
- Number of dependents
- Estimated salary
- Calls made
- SMS sent
- Data used

### Machine Learning Workflow

```text
Customer Data
      ↓
Data Cleaning
      ↓
Feature Selection
      ↓
Train-Test Split
      ↓
Feature Scaling
      ↓
Logistic Regression
      ↓
Churn Prediction
      ↓
Churn Probability