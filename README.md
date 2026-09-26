# Customer Churn & Retention Analytics

An end-to-end customer analytics project using Python, SQL, Machine Learning, PostgreSQL, and Power BI to analyze customer churn patterns, predict churn probability, segment users, and prioritize retention actions on an Indian telecom dataset (240K+ records).

---

## Tech Stack

| Domain | Technologies / Tools |
| :--- | :--- |
| **Language** | Python 3.11 |
| **Data Analysis & Viz** | Pandas, NumPy, Matplotlib, Seaborn |
| **Machine Learning** | Scikit-learn (Logistic Regression, StandardScaler), Joblib |
| **Database & Querying** | PostgreSQL, SQL |
| **Business Intelligence** | Microsoft Power BI, DAX |
| **Environment** | VS Code, Jupyter Notebook, Git, GitHub |

---

## Project Overview & Workflow

```text
Raw Customer Data ──► Data Cleaning & Imputation ──► Exploratory Data Analysis
                                                              │
Power BI Dashboard ◄── SQL Analysis ◄── Retention Priority ◄──┴──► Churn ML Model
```

1. **Data Cleaning:** Replaced invalid negative usage entries with median-imputed values across ~19.5K records.
2. **Exploratory Analysis:** Analyzed churn trends across demographics, geographic locations, and telecom partners.
3. **Customer Segmentation:** Grouped customers into 5 behavioral tiers based on engagement metrics.
4. **Machine Learning:** Built a Logistic Regression classification pipeline to output individual churn probabilities.
5. **Retention Framework:** Categorized users into Risk Tiers (High, Medium, Low) and ranked them using a Retention Priority Score:
   $$\text{Priority Score} = 0.70 \times \text{Churn Probability} + 0.30 \times \text{Salary Score}$$
6. **SQL & Power BI:** Analyzed business metrics in PostgreSQL and built a 3-page interactive Power BI dashboard (Executive Overview, Action Center, Geographic Insights).

---

## Dataset

* **Records:** 243,553 customers | **Attributes:** 14 features
* **Features:** `customer_id`, `telecom_partner`, `gender`, `age`, `state`, `city`, `pincode`, `date_of_registration`, `num_dependents`, `estimated_salary`, `calls_made`, `sms_sent`, `data_used`, `churn`

---

## Project Structure

```text
CustomerPulse/
├── data/
│   ├── raw/
│   └── processed/          # Cleaned CSVs & retention priority lists
├── notebooks/              # Jupyter Notebooks (01_eda, 02_churn_model, 03_retention)
├── sql/                    # PostgreSQL scripts (setup, quality, churn analysis)
├── models/                 # Serialized Logistic Regression model (.pkl)
├── powerbi/                # Power BI Dashboard (.pbix)
├── screenshots/            # Dashboard previews
├── requirements.txt
└── README.md
```

---

## Quickstart

```bash
# 1. Clone repository
git clone https://github.com/aditi-0926/CustomerPulse.git
cd CustomerPulse

# 2. Set up environment
conda create -n customerpulse python=3.11 -y
conda activate customerpulse
pip install -r requirements.txt

# 3. Run Notebooks / Power BI
jupyter notebook
# Open powerbi/Customer_Churn_Retention.pbix in Power BI Desktop
```

---

## Author

**Aditi Bhagat**  
Data Analytics | Data Science | Machine Learning | SQL | Power BI  
* **GitHub:** [https://github.com/aditi-0926](https://github.com/aditi-0926)
