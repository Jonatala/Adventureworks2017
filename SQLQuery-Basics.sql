
-- Pulling columns from a table
SELECT Name, GroupName 
FROM HumanResources.Department;

-- Filtering rows and extract results the predicate (GroupName) is equal (=) to the ('Research and Development')
SELECT * 
FROM HumanResources.Department
WHERE GroupName = 'Research and Development';

-- Filtering rows and extract results the predicate (GroupName) is not equal (<>) to the ('Research and Development')
SELECT * 
FROM HumanResources.Department
WHERE GroupName <> 'Research and Development';

-- Filtering rows and extract results with multiple predicate (=) (<>)  (AND)
SELECT * 
FROM HumanResources.Department
WHERE GroupName <> 'Research and Development' AND DepartmentID >12;

-- Filtering rows and extract results with multiple conditions
SELECT * 
FROM HumanResources.Department
WHERE GroupName = 'Research and Development' 
   OR GroupName = 'Quality Assurance';

SELECT * 
FROM HumanResources.Department
WHERE GroupName IN('Research and Development','Quality Assurance'); 

-- ORDERING results
SELECT * 
FROM HumanResources.Department
ORDER BY GroupName;

-- ORDERING results by multiple columns
SELECT * 
FROM HumanResources.Department
ORDER BY DepartmentID, GroupName;

  -- Creating column aliases

SELECT Name AS 'Department_Name', GroupName AS 'Management_Group'
FROM HumanResources.Department;

-- Creating values with constants by adding new data ('AdventureWorks') into new column named AS (Manufacturer)

SELECT Name, ProductNumber, 'AdventureWorks' AS Manufacturer
FROM Production.Product;

-- Another type of constant using Mathematical operations

SELECT Name, ProductNumber, 'AdventureWorks' AS Manufacturer, ListPrice,
           ListPrice * .85 AS SalePrice
FROM Production.Product
WHERE ListPrice > 0;

-- Limiting query to TOP results

SELECT TOP 10 TaxRate, Name
FROM Sales.SalesTaxRate;

SELECT TOP 10 TaxRate, Name
FROM Sales.SalesTaxRate
ORDER BY TaxRate DESC;

-- Using TOP Percent to limit query

SELECT TOP 30 PERCENT TaxRate, Name
FROM Sales.SalesTaxRate
ORDER BY TaxRate DESC;

-- Top result with ties

SELECT TOP 10 WITH TIES TaxRate, Name
FROM Sales.SalesTaxRate
ORDER BY TaxRate;

-- Removing Duplicates

SELECT DISTINCT City, StateProvinceID
FROM Person.Address
ORDER BY City

-- Mathematical Comparison Operators
SELECT Name, TaxRate
FROM Sales.SalesTaxRate
WHERE TaxRate = 8.75;

--- >=

SELECT Name, TaxRate
FROM Sales.SalesTaxRate
WHERE TaxRate >= 8.75;

-- Range of numbers

SELECT Name, TaxRate
FROM Sales.SalesTaxRate
WHERE TaxRate > 8.75 AND TaxRate < 18;

-- Range Inclusive of the specified number

SELECT Name, TaxRate
FROM Sales.SalesTaxRate
WHERE TaxRate >= 8.75 AND TaxRate <= 18;

-- Working with NULL (Removing NULL from results)

SELECT WorkOrderID, ScrappedQty, ScrapReasonID
FROM Production.WorkOrder
WHERE ScrapReasonID is not 

-- Working with NULL (showing only results with NULL value in results)

SELECT WorkOrderID, ScrappedQty, ScrapReasonID
FROM Production.WorkOrder
WHERE ScrapReasonID is NULL

-- Working with NULL (Using ISNULL function to return a different value)

SELECT WorkOrderID, ScrappedQty, ISNULL(ScrapReasonID,999) AS ScrapeReason
FROM Production.WorkOrder;

-- Matching text with LIKE and Wildcards

SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE 'A%'

SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE '%A'

SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE '%A%'

-- Mathing first letter and following set of letters with underscores
  -- % any string of zero or more characters

SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE 'A____'

-- Find Mathing first letters (multiple)

SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE '[ABC]%'

SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE 'B[EOU]%'

SELECT FirstName
FROM Person.Person
WHERE FirstName LIKE 'B[EOU]___'

