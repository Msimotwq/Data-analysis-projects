SELECT * FROM telco2_db.customer_churn;

-- Churn Count Summary
SELECT Churn, COUNT(*) as total_customers
FROM telco2_db.customer_churn
GROUP BY Churn;

-- Average Monthly Charges by Churn Status
SELECT Churn, ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charge
FROM telco2_db.customer_churn
GROUP BY Churn;

-- Customer Count by Contract Type
SELECT Contract, COUNT(*) as total_customers
FROM telco2_db.customer_churn
GROUP BY Contract
ORDER BY total_customers;

-- Top 5 Highest Paying Customers
SELECT CustomerID, MonthlyCharges, TotalCharges
FROM telco2_db.customer_churn
ORDER BY MonthlyCharges DESC
LIMIT 20;

-- Churn by Internet Service Type
SELECT InternetService, Churn, COUNT(*) AS total
FROM telco2_db.customer_churn
GROUP BY InternetService, Churn;
