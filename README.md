# 📦 UK E-commerce Data Analysis (EXCEL|| SQL || PYTHON)

## 📌 Project Overview
This project analyzes UK-based e-commerce transaction data to uncover insights related to sales performance, customer behavior, product demand, returns, and time-based purchasing patterns.

The project follows a **complete, end-to-end data analytics workflow**, starting from raw data cleaning and ending with analytics-ready outputs for dashboarding.

The dataset contains **line-level transaction data**, meaning each order can include multiple products. Special care was taken to aggregate data at the correct business level (order, customer, product, and time).

---

## 🔄 End-to-End Workflow
1. **Excel** – Data cleaning and preprocessing  
2. **SQL (MySQL)** – Metric validation and structured analysis  
3. **Python (Jupyter Notebook)** – Exploratory & behavioral analysis  
4. **BI-ready outputs** – Prepared for visualization tools (e.g., Power BI)

---

## 🛠 Tools & Technologies
- **Excel** – Data cleaning & preprocessing  
- **MySQL** – Data querying and analysis  
- **MySQL Workbench** – SQL development environment  
- **Python** – Exploratory data analysis  
  - pandas  
  - matplotlib  
  - seaborn  
- **Jupyter Notebook** – Python analysis documentation  

---

## 🧹 Data Cleaning & Preparation (Excel)
The raw dataset was cleaned and prepared in **Excel** before loading into MySQL.

### Key data cleaning steps:
- Removed fully empty rows
- Standardized column formats
- Handled missing `CustomerID` values by labeling them as `Unknown`
- Ensured identifier columns (`InvoiceNo`, `StockCode`) were treated as text due to alphanumeric values
- Created derived columns:
  - `InvoiceYear`
  - `InvoiceMonth`
  - `InvoiceHour`
  - `InvoiceDay`
  - `LineRevenue` (Quantity × UnitPrice)
- Preserved negative quantities to correctly represent product returns
- Ensured date and time fields were properly formatted

The cleaned dataset served as the **single source of truth** for all downstream analysis.

---

## 📂 Dataset Access
The cleaned dataset (~36 MB) exceeds GitHub’s file size limit.

🔗 **Download cleaned dataset:**  
https://docs.google.com/spreadsheets/d/1EO8B-grat7NyiSrfpEpPmLuE7Yo0aFzJ68UhQJNU2PA/edit?usp=sharing

---

## 📂 Project Structure
```text
├── sql/
│   ├── phase_1_data_understanding.sql
│   ├── phase_2_SALES_REVENUE_ANALYSIS.sql
│   ├── phase3_PRODUCT_PERFORMANCE.sql
│   ├── PHASE4_CUSTOMER_ANALYSIS.sql
│   ├── PHASE5_TIME_BEHAVIOR_ANALYSIS.sql
│   ├── PHASE6_DATA_QUALITY.sql
│   └── sql_upwork_project1.sql
│
├── notebooks/
│   └── ecommerce_analysis.ipynb
│ 
└── README.md
