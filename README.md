
# Bank Loan Analysis Dashboard (Excel Project)

## 📊 Project Overview

This project features a comprehensive and interactive dashboard built in **Microsoft Excel** to analyze bank loan data. The dashboard provides key insights into lending activities, portfolio health, and customer demographics, enabling stakeholders to monitor performance, assess risk, and make informed, data-driven decisions.

The core of this project is transforming raw loan data into actionable metrics. While the final visualization and user interaction happen in Excel, the heavy lifting of data aggregation and calculation is performed using SQL.

## 📸 Dashboard Snapshots
<img width="1523" height="772" alt="Screenshot 2025-10-07 200116" src="https://github.com/user-attachments/assets/ccffb43d-f7a9-4e3d-900c-4a9f55497449" />

Here are previews of the dashboards, showcasing the summary and overview sections.

### Summary Dashboard

*Provides a high-level view of Key Performance Indicators (KPIs) and the overall health of the loan portfolio.*

### Overview & Charts Dashboard

*Offers a deeper dive with visualizations for monthly trends, regional analysis, and breakdowns by loan purpose and term.*

## 🎯 Key Features & KPIs Tracked

The dashboard is designed to provide answers to critical business questions by tracking:

#### Summary KPIs

  * **Total Loan Applications:** Overall count of loan applications.
  * **Month-to-Date (MTD) & Month-over-Month (MoM) Analysis:** Performance tracking for the current month compared to the previous month.
  * **Total Funded Amount:** Total capital disbursed to borrowers.
  * **Total Amount Received:** Total payments received from borrowers.
  * **Average Interest Rate & Debt-to-Income (DTI):** Key metrics for assessing loan and borrower profiles.

#### Risk Assessment (Good vs. Bad Loans)

  * **Good Loan Analysis:** Tracks 'Fully Paid' and 'Current' loans (count, percentage, funded amount).
  * **Bad Loan Analysis:** Tracks 'Charged Off' loans to quantify portfolio risk.

#### Interactive Visualizations

  * **Monthly & Regional Trends:** Line charts and maps to view performance over time and across states.
  * **Categorical Breakdowns:** Donut and Bar charts to analyze loans by **Term**, **Purpose**, **Employee Length**, and **Home Ownership**.

## 🛠️ Tech Stack & Methodology

This project follows a two-step process, combining the power of SQL for data processing with the accessibility of Excel for visualization.

1.  **Data Processing (SQL):**

      * The raw data from the `bank_loan_data.csv` file was loaded into a SQL Server database.
      * The SQL scripts (`DASHBOARD - 1.sql` and `DASHBOARD - 2.sql`) were executed to calculate all KPIs and create aggregated summary tables needed for the charts.

2.  **Dashboarding (Microsoft Excel):**

      * The processed data from SQL was connected to Excel.
      * The dashboard was built using **PivotTables**, **Pivot Charts**, and **Slicers** to create a fully interactive and user-friendly experience.
      * Formulas and conditional formatting were used to display KPIs and MoM changes effectively.

## 📂 Project Structure

The project is structured to deliver insights on multiple levels, as detailed in the `Problem Statements.pdf`:

  * **Dashboard 1: Summary View:** A landing page with high-level KPIs for a quick performance check.
  * **Dashboard 2: Overview & Charts:** A detailed view with various charts for deeper, exploratory analysis.
  * **Dashboard 3: Detailed Data:** A tabular sheet containing the raw data, allowing users to search and filter for specific records.

## 🚀 How to Use

To replicate this project:

1.  **Database Setup:** Set up a SQL database (e.g., SQL Server) and import the `bank_loan_data.csv` file.
2.  **Run SQL Queries:** Execute the queries in `DASHBOARD - 1.sql` and `DASHBOARD - 2.sql` to generate the summary data.
3.  **Connect to Excel:** Open the `Bank_loan DashBoard.xlsx` file. If the data connection is not live, you can paste the results from your SQL queries into the data source sheets.
4.  **Explore:** Use the slicers and filters on the dashboard sheets to interact with the data.
