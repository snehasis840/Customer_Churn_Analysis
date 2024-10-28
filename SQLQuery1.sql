use db_churn;
select * from stg_churn;


SELECT Gender, Count(Gender) as TotalCount,
Count(Gender)* 100 /(Select Count(*) from stg_churn)  as Percentage
from stg_Churn
Group by Gender;

 -- 
SELECT Contract, Count(Contract) as TotalCount,
Count(Contract)/ (Select Count(*) from stg_churn)  as Percentage
from stg_churn
Group by Contract;


SELECT Customer_Status, Count(Customer_Status) as TotalCount, Sum(Total_Revenue) as TotalRev,
Sum(Total_Revenue) / (Select sum(Total_Revenue) from stg_churn) * 100  as RevPercentage
from stg_churn
Group by Customer_Status;

 

SELECT State, Count(State) as TotalCount,
Count(State) * 100 / (Select Count(*) from stg_Churn)  as Percentage
from stg_Churn
Group by State
Order by Percentage desc;
 
