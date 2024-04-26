# US-FDA-s-Data-Analysis-Using-SQL-and-Power-BI

Welcome to the comprehensive analysis of the US FDA's data using SQL and Power BI! In this project, I've meticulously explored the FDA's datasets to uncover insights into drug approval trends and sponsor registration trends over the years.

Data Collection and Preparation:

First, I collected historical data from the FDA, encompassing drug approvals and sponsor registrations. The datasets were then cleaned and transformed to ensure data integrity and consistency.

SQL Queries for Data Extraction:

Using SQL, I crafted queries to fetch relevant data from Excel sheets. For drug approval trends, I queried the database to extract information such as approval dates, drug names, indications, and approval types. Similarly, for sponsor registration trends, I retrieved data on sponsors' registration dates, types, and locations.

Data Analysis with Power BI:

With the extracted data, I built interactive dashboards and visualizations using Power BI. These dashboards provide a comprehensive overview of drug approval trends, showcasing insights such as the number of approvals per year, approval rates by drug type, and trends in approval times. Additionally, the sponsor registration dashboard highlights trends in sponsor registrations over the years, including geographical distribution and registration types.

Key Insights:

Through thorough analysis, several key insights emerged. For instance, trends in drug approvals revealed an increasing number of approvals over the years, particularly in certain therapeutic areas. Analysis of sponsor registrations unveiled shifting trends in sponsor demographics and types, providing valuable insights for regulatory strategy and market analysis.

Conclusion:

This project demonstrates the power of SQL and Power BI in uncovering actionable insights from complex datasets. By analyzing the FDA's data on drug approvals and sponsor registrations, we gain valuable insights into trends shaping the pharmaceutical industry, aiding decision-making processes and strategic planning for stakeholders across the healthcare landscape.


Data Schema:-

![image](https://github.com/SumitTiwari1/US-FDA-s-Data-Analysis-Using-SQL-and-Power-BI/assets/167782156/b501f29b-0b41-4902-9d5b-1894350548c9)

Project Objectives:-

Part - 1 SQL Queries:

Task 1: Identifying Approval Trends

        1. Determine the number of drugs approved each year and provide insights into the yearly trends.

        ![image](https://github.com/SumitTiwari1/US-FDA-s-Data-Analysis-Using-SQL-and-Power-BI/assets/167782156/8f4abd6b-ea91-4aa2-8a62-ca6f4377d76e)

        ![image](https://github.com/SumitTiwari1/US-FDA-s-Data-Analysis-Using-SQL-and-Power-BI/assets/167782156/fc4cf447-d31d-4eae-812b-1657b11118c6)

        ![image](https://github.com/SumitTiwari1/US-FDA-s-Data-Analysis-Using-SQL-and-Power-BI/assets/167782156/bc1c7174-0565-47b1-a953-17dec4b858a0)



        2. Identify the top three years that got the highest and lowest approvals, in descending and ascending order, respectively.

        ![image](https://github.com/SumitTiwari1/US-FDA-s-Data-Analysis-Using-SQL-and-Power-BI/assets/167782156/7f68cb01-651a-41e6-be1d-40a59724e651)

        ![image](https://github.com/SumitTiwari1/US-FDA-s-Data-Analysis-Using-SQL-and-Power-BI/assets/167782156/40684f90-42a5-42e4-af8c-b29345fbbded)


        3. Explore approval trends over the years based on sponsors.

        ![image](https://github.com/SumitTiwari1/US-FDA-s-Data-Analysis-Using-SQL-and-Power-BI/assets/167782156/543f295e-3e8d-43b7-aa19-c33588fc0aea)

        ![image](https://github.com/SumitTiwari1/US-FDA-s-Data-Analysis-Using-SQL-and-Power-BI/assets/167782156/afadfc87-b249-473c-b26a-40845b882f09)

        ![image](https://github.com/SumitTiwari1/US-FDA-s-Data-Analysis-Using-SQL-and-Power-BI/assets/167782156/9d24f101-744f-4693-99a7-63054169e0cf)


        4. Rank sponsors based on the total number of approvals they received each year between 1939 and 1960

        ![image](https://github.com/SumitTiwari1/US-FDA-s-Data-Analysis-Using-SQL-and-Power-BI/assets/167782156/fcc5c627-0363-41ca-be07-c1ea01c8388b)

        
Task 2: Segmentation Analysis Based on Drug MarketingStatu

        1. Group products based on MarketingStatus. Provide meaningful insights into the segmentation patterns.

        ![image](https://github.com/SumitTiwari1/US-FDA-s-Data-Analysis-Using-SQL-and-Power-BI/assets/167782156/c4c6f527-23c1-43da-81e9-855bed7eb092)

        ![image](https://github.com/SumitTiwari1/US-FDA-s-Data-Analysis-Using-SQL-and-Power-BI/assets/167782156/6f829824-bb33-48ca-bbc6-6213c4c4c0dd)

        ![image](https://github.com/SumitTiwari1/US-FDA-s-Data-Analysis-Using-SQL-and-Power-BI/assets/167782156/bb73d354-2635-4904-8ac2-fb546a8425dc)

        2. Calculate the total number of applications for each MarketingStatus year-wise after the year 2010.

        ![image](https://github.com/SumitTiwari1/US-FDA-s-Data-Analysis-Using-SQL-and-Power-BI/assets/167782156/e39b2ca0-9932-486a-899d-d123a448f864)

        ![image](https://github.com/SumitTiwari1/US-FDA-s-Data-Analysis-Using-SQL-and-Power-BI/assets/167782156/7cf377a8-1798-40bf-91f9-6a3e0b104629)


Task 3: Analyzing Product

        1. Categorize Products by dosage form and analyze their distribution.

        ![image](https://github.com/SumitTiwari1/US-FDA-s-Data-Analysis-Using-SQL-and-Power-BI/assets/167782156/6322e7a6-f3d1-4528-9b60-51f3f48a3cde)

        ![image](https://github.com/SumitTiwari1/US-FDA-s-Data-Analysis-Using-SQL-and-Power-BI/assets/167782156/8d139190-0ca2-4779-a653-b590c832f8d3)

        2. Calculate the total number of approvals for each dosage form and identify the most successful forms

        ![image](https://github.com/SumitTiwari1/US-FDA-s-Data-Analysis-Using-SQL-and-Power-BI/assets/167782156/3ef4263d-f32b-4c8d-9c65-219036c0fceb)

        ![image](https://github.com/SumitTiwari1/US-FDA-s-Data-Analysis-Using-SQL-and-Power-BI/assets/167782156/a99e9fd7-4347-42ea-bcf8-def19abf14af)

        ![image](https://github.com/SumitTiwari1/US-FDA-s-Data-Analysis-Using-SQL-and-Power-BI/assets/167782156/d34a6aec-e50c-4b44-b575-5d05c6fdf555)


Task 4: Exploring Therapeutic Classes and Approval Trends

        1. Analyze drug approvals based on the therapeutic evaluation code (TE_Code).

        ![image](https://github.com/SumitTiwari1/US-FDA-s-Data-Analysis-Using-SQL-and-Power-BI/assets/167782156/41f27b7e-4880-400d-a2e8-bd1c0bb4367a)


Part - 2 Power BI Visualizations:

        1. Show the total number of applications for each MarketingStatus. Enable users to filter by years and MarketingStatus for detailed analysis

        ![image](https://github.com/SumitTiwari1/US-FDA-s-Data-Analysis-Using-SQL-and-Power-BI/assets/167782156/b202bc15-e636-4597-a6fd-de7a9bf6e426)

        2. Visualize drug approvals based on therapeutic classes. Identify classes with the highest number of approvals.

        ![Uploading image.png…]()



        






        






