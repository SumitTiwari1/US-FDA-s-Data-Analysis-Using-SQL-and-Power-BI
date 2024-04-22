use sql_project_fda

select * from product_tecode

#----------------------------------Task 1: Identifying Approval Trends-------------------------------------------------
# Determine the number of drugs approved each year

SELECT YEAR(docdate) AS 'Approval Year',
    COUNT(appdocid) AS 'Number Of Approvals' 
FROM 
    appdoc
    where actiontype = 'ap'
GROUP BY 
    year(docdate)
order by
	year(docdate); 
    
#-----------Identify the top three years that got the highest and lowest approvals, in descending and ascending order, respectively

SELECT YEAR(docdate) AS 'Approval Year',
    COUNT(AppDocID) AS 'Number Of Approvals'
FROM appdoc where actiontype = 'ap'
GROUP BY 
    year(docdate)
order by
	COUNT('Number Of Approvals')
    limit 3; #-------------- Lowest Approvals in Assending year
    
SELECT YEAR(docdate) AS 'Approval Year',
    COUNT(*) AS 'Number Of Approvals'
    FROM appdoc 
    where actiontype = 'ap'
GROUP BY 
    year(docdate)
order by
	COUNT('Number Of Approvals') desc
    limit 3; #-------------- Lowest Approvals in Descending year
    
    
    #-----------------Explore approval trends over the years based on sponsors.----------------------
    
SELECT 
    YEAR(D.docdate) AS 'Approval Year',
    A.sponsorapplicant as Sponsor
FROM 
    appdoc D
JOIN 
    application A ON D.ApplNo = A.ApplNo
ORDER BY 
    'Approval Year'
    

    
    
    #----Rank sponsors based on the total number of approvals they received each year between 1939 and 1960.
    
    
SELECT a.sponsorapplicant, YEAR(d.docdate) AS 'Approval Year', 
count(d.actiontype) AS 'Total Approvals', 
RANK() OVER (PARTITION BY YEAR(d.docdate) ORDER BY count(d.actiontype) DESC) AS 'Rank'
FROM application a
JOIN appdoc d ON a.applno = d.applno
WHERE YEAR(d.docdate) BETWEEN 1939 AND 1960
GROUP BY a.sponsorapplicant, YEAR(d.docdate)
ORDER BY 'Rank';


#        Task 2: Segmentation Analysis Based on Drug MarketingStatus

# 1. Group products based on MarketingStatus.

SELECT productmktstatus as 'Marketing Status', COUNT(*) as 'Product Count'
FROM product
GROUP BY productmktstatus;

#   2. Calculate the total number of applications for each MarketingStatus year-wise after the year 2010

SELECT p.productmktStatus as 'Marketing Status',Year(d.docdate) as 'Year', count(p.Applno) AS 'Total Applications'
FROM product p
JOIN Appdoc d ON p.applno = d.applno
WHERE Year(d.docdate) > 2010
GROUP BY p.productmktStatus, Year(d.docdate);


#                         Task 3: Analyzing Products

# 1. Categorize Products by dosage form and analyze their distribution.

select form, count(productno) as 'No of Product'
from product
group by form
order by count(productno) desc;


# 2. Calculate the total number of approvals for each dosage form and identify the most uccessful forms.

select p.form, count(a.actiontype) as 'Approval Count' from product p
inner join application a
on a.applno=p.applno where a.actiontype='ap'
group by p.form
order by count(a.actiontype) desc
limit 10;


# 3. Investigate yearly trends related to successful forms
    
select p.form, count(d.actiontype) as 'Approval Count', year(d.docdate) from product p
inner join appdoc d on  d.applno=p.applno 
where d.actiontype='ap'
group by p.form,year(d.docdate)
order by count(d.actiontype) desc;

    
#                            Task 4: Exploring Therapeutic Classes and Approval Trends

# 1. Analyze drug approvals based on therapeutic evaluation code (TE_Code).

select p.tecode,count(a.actiontype) as "Approval Count" from application a
join product p where p.applno = a.applno and p.tecode is not null
group by p.tecode
order by count(a.actiontype) desc



