Use [Bank Loan DB]

SELECT * FROM	bank_loan_data

--Total Loan Applications
SELECT COUNT(id) AS Total_Applications FROM bank_loan_data
--Month-to-Date (MTD) Loan Applications
SELECT COUNT(id) AS MTD_Total_Applications FROM bank_loan_data
WHERE MONTH(issue_date) = 12
--PMTD Loan Applications
SELECT COUNT(id) AS PMTD_Total_Applications FROM bank_loan_data
WHERE MONTH(issue_date) = 11 and year(issue_date) = 2021


--
--Total Funded Amount
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM bank_loan_data
 --MTD Total Funded Amount
SELECT SUM(loan_amount) AS MTD_Total_Funded_Amount FROM bank_loan_data
WHERE MONTH(issue_date) = 12 and YEAR(issue_date)=2021
 --PMTD Total Funded Amount
SELECT SUM(loan_amount) AS PMTD_Total_Funded_Amount FROM bank_loan_data
WHERE MONTH(issue_date) = 11

--
--Total Amount Received
SELECT SUM(total_payment) AS Total_Amount_Collected FROM bank_loan_data
 --MTD Total Amount Received
SELECT SUM(total_payment) AS MTD_Total_Amount_Collected FROM bank_loan_data
WHERE MONTH(issue_date) = 12
 --PMTD Total Amount Received
SELECT SUM(total_payment) AS PMTD_Total_Amount_Collected FROM bank_loan_data
WHERE MONTH(issue_date) = 11
 
--
--Average Interest Rate
select round(avg(int_rate),4)*100 as avg_interest_rate from bank_loan_data
--MTD Average Interest
select round(avg(int_rate),4)*100 as MTD_avg_interest_rate from bank_loan_data
where month(issue_date) = 12
--PMTD Average Interest
SELECT round(avg(int_rate),4)*100 AS PMTD_Avg_Int_Rate FROM bank_loan_data
WHERE MONTH(issue_date) = 11


--
--Avg DTI
SELECT AVG(dti)*100 AS Avg_DTI FROM bank_loan_data
--MTD Avg DTI
SELECT AVG(dti)*100 AS MTD_Avg_DTI FROM bank_loan_data
WHERE MONTH(issue_date) = 12
--PMTD Avg DTI
SELECT AVG(dti)*100 AS PMTD_Avg_DTI FROM bank_loan_data
WHERE MONTH(issue_date) = 11






--GOOD LOAN ISSUED
--Good Loan Percentage
SELECT
    (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100.0) / 
	COUNT(id) AS Good_Loan_Percentage
FROM bank_loan_data

--Good Loan Applications
SELECT COUNT(id) AS Good_Loan_Applications FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

 --Good Loan Funded Amount
SELECT SUM(loan_amount) AS Good_Loan_Funded_amount FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

 --Good Loan Amount Received
SELECT SUM(total_payment) AS Good_Loan_amount_received FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'



--BAD LOAN ISSUED
--Bad Loan Percentage
SELECT
    (COUNT(CASE WHEN loan_status = 'Charged Off' THEN id END) * 100.0) / 
	COUNT(id) AS Bad_Loan_Percentage
FROM bank_loan_data
--Bad Loan Applications
SELECT COUNT(id) AS Bad_Loan_Applications FROM bank_loan_data
WHERE loan_status = 'Charged Off'
--Bad Loan Funded Amount
SELECT SUM(loan_amount) AS Bad_Loan_Funded_amount FROM bank_loan_data
WHERE loan_status = 'Charged Off'
--Bad Loan Amount Received
SELECT SUM(total_payment) AS Bad_Loan_amount_received FROM bank_loan_data
WHERE loan_status = 'Charged Off'
 

--
--LOAN STATUS
SELECT loan_status,
      COUNT(id) AS LoanCount,
      SUM(total_payment) AS Total_Amount_Received,
      SUM(loan_amount) AS Total_Funded_Amount,
      AVG(int_rate * 100) AS Interest_Rate,
      AVG(dti * 100) AS DTI
FROM bank_loan_data
GROUP BY loan_status

SELECT loan_status, 
	SUM(total_payment) AS MTD_Total_Amount_Received, 
	SUM(loan_amount) AS MTD_Total_Funded_Amount 
FROM bank_loan_data
WHERE MONTH(issue_date) = 12 
GROUP BY loan_status





