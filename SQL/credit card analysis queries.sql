SELECT COUNT(*) AS total_customers
FROM credit_card_customers;

SELECT Attrition_Flag,
       COUNT(*) AS total_customers
FROM credit_card_customers
GROUP BY Attrition_Flag;

SELECT Card_Category,
       ROUND(AVG(Credit_Limit),2) AS avg_credit_limit
FROM credit_card_customers
GROUP BY Card_Category
ORDER BY avg_credit_limit DESC;

SELECT CLIENTNUM,
       Total_Trans_Amt
FROM credit_card_customers
ORDER BY Total_Trans_Amt DESC
LIMIT 10;

SELECT Gender,
       Attrition_Flag,
       COUNT(*) AS total
FROM credit_card_customers
GROUP BY Gender, Attrition_Flag;

SELECT Education_Level,
       COUNT(*) AS total_customers
FROM credit_card_customers
GROUP BY Education_Level
ORDER BY total_customers DESC;

SELECT Marital_Status,
       ROUND(AVG(Total_Trans_Amt),2) AS avg_transaction
FROM credit_card_customers
GROUP BY Marital_Status;

SELECT Income_Category,
       ROUND(AVG(Avg_Utilization_Ratio),2) AS avg_utilization
FROM credit_card_customers
GROUP BY Income_Category;

SELECT Card_Category,
       SUM(Total_Trans_Amt) AS total_transaction_amount
FROM credit_card_customers
GROUP BY Card_Category
ORDER BY total_transaction_amount DESC;

SELECT Attrition_Flag,
       ROUND(AVG(Credit_Limit),2) AS avg_credit_limit
FROM credit_card_customers
GROUP BY Attrition_Flag;