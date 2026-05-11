SELECT COUNT(*) AS total_employes
FROM hr_analytics;

SELECT COUNT(*) AS Attrition_Count FROM hr_analytics
WHERE Attrition = 'yes';

SELECT ROUND((COUNT(CASE WHEN Attrition='Yes' THEN 1 END)*100.0)
/COUNT(*),2) AS attrition_rate FROM hr_analytics;

SELECT Department, COUNT(*) AS Total_Employees FROM hr_analytics
GROUP BY Department
ORDER BY Total_Employees ASC;

SELECT Round(AVG(MonthlyIncome), 2) AS Average_salary FROM hr_analytics;

SELECT JobRole, MAX(MonthlyIncome) AS Highest_salary FROM hr_analytics
GROUP BY JobRole
ORDER BY Highest_salary DESC;

SELECT OverTime, COUNT(*) Attrition_Count FROM hr_analytics
WHERE Attrition = 'yes'
GROUP BY OverTime;

SELECT Gender, COUNT(*) AS Total_employees FROM hr_analytics
GROUP BY Gender;

SELECT Department, Round(AVG(MonthlyIncome), 2) AS Average_salary FROM hr_analytics
GROUP BY Department
ORDER BY Average_salary;

SELECT EmployeeNumber, JobRole, MonthlyIncome FROM hr_analytics
ORDER BY MonthlyIncome DESC
LIMIT 5;

SELECT EducationField, COUNT(*) AS Total_employees FROM hr_analytics
GROUP BY EducationField
ORDER BY Total_employees ASC;

SELECT WorkLifeBalance, COUNT(*) AS Total_Employees FROM hr_analytics
GROUP BY WorkLifeBalance;