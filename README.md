
---

# Bank Loan Analysis Dashboard

## 📊 Project Overview

This project provides a comprehensive analysis of bank loan data through an interactive dashboard. The primary goal is to offer key insights into lending activities, risk assessment, and portfolio performance. By transforming raw loan data into actionable metrics and visualizations, the dashboard helps stakeholders monitor performance, identify trends, and make data-driven decisions.

The analysis covers several key areas:
* **High-Level KPIs:** Tracking total loan applications, funded amounts, and interest rates.
* **Risk Assessment:** Differentiating between "Good Loans" (fully paid, current) and "Bad Loans" (charged off) to assess portfolio risk.
* **Trend Analysis:** Monitoring Month-to-Date (MTD), Previous Month-to-Date (PMTD), and Month-over-Month (MoM) changes in key metrics.
* **Detailed Breakdown:** Analyzing loan data across various dimensions such as loan purpose, term, employee length, home ownership, and geography.

## 📸 Dashboard Snapshot
<img width="1523" height="772" alt="Screenshot 2025-10-07 200116" src="https://github.com/user-attachments/assets/c4475809-17be-450a-bb46-abc542f79d7d" />


Here is a preview of the main summary dashboard created for this project.



## 🎯 Key Objectives & KPIs

The dashboard was designed to answer critical business questions by tracking the following Key Performance Indicators (KPIs):

### Summary KPIs
* **Total Loan Applications:** The total number of loan applications received.
* **Month-to-Date (MTD) Applications:** The number of applications received in the current month (December).
* **Month-over-Month (MoM) Growth:** The percentage change in loan applications compared to the previous month.
* **Total Funded Amount:** The total amount of money disbursed to borrowers.
* **Total Amount Received:** The total amount of money collected from borrowers.
* **Average Interest Rate:** The average interest rate across all loans.
* **Average Debt-to-Income (DTI) Ratio:** The average DTI for all borrowers.

### Good Loan vs. Bad Loan Analysis
* **Good Loan Percentage & Applications:** The count and percentage of loans that are 'Fully Paid' or 'Current'.
* **Bad Loan Percentage & Applications:** The count and percentage of loans that are 'Charged Off'.
* **Good/Bad Loan Funded Amount:** The total amount funded for each category.
* **Good/Bad Loan Amount Received:** The total amount received for each category.

---

## 🛠️ Methodology & Tools

1.  **Data Source:** The primary dataset used for this analysis is `financial_loan.csv`, which contains detailed information on individual loans.
2.  **Database & SQL:** The raw data was loaded into a SQL database (likely SQL Server, based on the query syntax). A series of SQL queries, found in `DASHBOARD - 1.sql` and `DASHBOARD - 2.sql`, were written to perform the following:
    * Calculate all the summary KPIs.
    * Aggregate data for month-over-month comparisons.
    * Group data by different categories (state, purpose, term, etc.) to feed into the visualizations.
3.  **Dashboarding:** The processed data was then visualized in a business intelligence tool (like Power BI or Tableau) to create the final interactive dashboard.

---

## 📈 Dashboard Structure

The project is structured into three main views or dashboards as outlined in the `Problem Statements.pdf`.

### Dashboard 1: Summary View
This is the main landing page, providing a high-level overview of all the critical KPIs. It focuses on MTD and MoM performance to give a quick snapshot of current trends.

### Dashboard 2: Overview & Charts
This dashboard provides detailed visualizations to explore the data from different perspectives:
* **Monthly Trends (Line Chart):** Shows the total loan applications, funded amount, and amount received for each month.
* **Regional Analysis (Map):** Displays the distribution of loan applications and funded amounts across different states.
* **Loan Purpose (Bar Chart):** Breaks down the number of loans by purpose (e.g., debt consolidation, credit card, home improvement).
* **Loan Term (Donut Chart):** Shows the split between 36-month and 60-month loan terms.
* **Home Ownership (Tree Map):** Visualizes the metrics categorized by the borrower's home ownership status (Rent, Mortgage, Own).
* **Employee Length (Bar Chart):** Illustrates loan metrics distributed by the borrowers' years of employment.

### Dashboard 3: Detailed View
This section provides a complete, tabular view of the entire dataset. It acts as a one-stop solution for users who need to search, filter, and view the raw details of specific loans or customer segments.
