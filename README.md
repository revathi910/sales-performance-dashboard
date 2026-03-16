# 📊 Sales Performance Analysis Dashboard

![Dashboard Preview](sales_dashboard.png)

## 🎯 Project Overview

A end-to-end **Sales Performance Analysis** project analyzing 2,000+ sales transactions across regions, products, and time periods. Built using **Python, SQL, Excel, and an interactive HTML dashboard**.

> **Business Goal:** Help management understand sales trends, top products, and regional performance to drive better business decisions.

---

## 🚀 Live Demo

🔗 **[View Interactive Dashboard](https://YOUR-USERNAME.github.io/sales-performance-dashboard/sales_dashboard.html)**

---

## 📁 Project Files

| File | Description |
|------|-------------|
| `sales_dashboard.html` | Interactive web dashboard (Chart.js) |
| `Sales_Dashboard.pptx` | 8-slide PowerPoint presentation |
| `sales_cleaned.xlsx` | Cleaned & formatted dataset |
| `sales_queries.sql` | SQL analysis queries |
| `sales_dashboard.png` | Static dashboard image |

---

## 🔍 Key Insights

- 💰 **Total Revenue:** $3,925,326 across FY 2022–2023
- 📈 **Best Region:** West — highest revenue contributor
- 🏆 **Top Product:** Standing Desk ($426K revenue)
- 📉 **Discount Alert:** 15–20% discounts reducing profit margins
- 📅 **Seasonal Peak:** Q4 (Nov–Dec) shows highest sales each year

---

## 🛠️ Tools & Technologies

![Python](https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-4479A1?style=flat&logo=mysql&logoColor=white)
![Excel](https://img.shields.io/badge/Excel-217346?style=flat&logo=microsoft-excel&logoColor=white)
![HTML](https://img.shields.io/badge/HTML5-E34F26?style=flat&logo=html5&logoColor=white)
![Chart.js](https://img.shields.io/badge/Chart.js-FF6384?style=flat&logo=chartdotjs&logoColor=white)

| Tool | Usage |
|------|-------|
| **Python** (Pandas, Matplotlib, Seaborn) | Data cleaning, analysis, visualization |
| **SQL** | Aggregation queries, trend analysis |
| **Excel** | Data prep, helper columns (Month, Year, Revenue) |
| **HTML + Chart.js** | Interactive dashboard with filters |
| **PowerPoint** | Presentation for stakeholders |

---

## 📊 Dashboard Features

- ✅ **KPI Cards** — Total Revenue, Profit, Orders, Avg Order Value
- ✅ **Monthly Trend** — 2022 vs 2023 line chart comparison
- ✅ **Top 10 Products** — Horizontal bar chart
- ✅ **Regional Performance** — Doughnut chart with breakdown
- ✅ **Heatmap** — Region × Category revenue matrix
- ✅ **Filters** — Year and Region interactive filters

---

## 🗄️ SQL Queries Included

```sql
-- Monthly Sales Trend
SELECT YEAR(order_date), MONTH(order_date), SUM(revenue) AS total_sales
FROM sales
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY 1, 2;

-- Top 10 Products
SELECT product_name, SUM(revenue) AS total_revenue
FROM sales
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 10;

-- Regional Performance
SELECT region, SUM(revenue) AS total_revenue, SUM(profit) AS total_profit
FROM sales
GROUP BY region;
```

---

## 📂 Dataset

- **Source:** [Superstore Sales Dataset – Kaggle](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)
- **Records:** 2,000 transactions
- **Period:** January 2022 – December 2023
- **Columns:** Order Date, Region, Category, Product, Quantity, Unit Price, Discount, Revenue, Profit

---

## 🏃 How to Run

**View Dashboard:**
```
Open sales_dashboard.html in any browser — no installation needed!
```

**Run Python Analysis:**
```bash
pip install pandas matplotlib seaborn openpyxl
python sales_analysis.py
```

**Run SQL Queries:**
```bash
# Import sales_cleaned.xlsx into MySQL/PostgreSQL, then run:
mysql -u root -p your_db < sales_queries.sql
```

---

## 👤 Author

**Your Name**
- 📧 your.email@gmail.com
- 💼 [LinkedIn](https://linkedin.com/in/your-profile)
- 🐙 [GitHub](https://github.com/your-username)

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).
