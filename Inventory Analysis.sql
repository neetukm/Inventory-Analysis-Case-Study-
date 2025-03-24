SELECT * FROM insigh_innovatort_db.cl_2017purchaseprices;

# Count Total Records in cl_2017purchaseprice
SELECT COUNT(*) AS Total_Records
FROM insigh_innovatort_db.cl_2017purchaseprices;


# Top 5 Most Expensive Products
SELECT Brand, Description, Price
FROM insigh_innovatort_db.cl_2017purchaseprice
ORDER BY Price DESC 
LIMIT 5;

# Average Purchase Price Per Vendor
SELECT VendorName, ROUND(AVG(PurchasePrice), 2) AS Avg_PurchasePrice
FROM cl_2017purchaseprices;
GROUP BY VendorName
ORDER BY Avg_PurchasePrice DESC;

#  Distinct Vendors in cl_2017purchaseprice
SELECT DISTINCT VendorName
FROM cl_2017purchaseprice;

# Products with Highest Profit Margin
SELECT Brand, Description, (Price - PurchasePrice) AS Profit_Margin
FROM cl_2017purchaseprice
ORDER BY Profit_Margin DESC
LIMIT 5;


# Find Lowest Purchase Price per Vendor
SELECT VendorName, MIN(PurchasePrice) AS Min_PurchasePrice
FROM cl_2017purchaseprice
GROUP BY VendorName;

# Join with cl_salesfinal123120 to Calculate Total Sales
SELECT p.Brand, p.Description, s.Total_Sales
FROM cl_2017purchaseprice p
JOIN cl_salesfinal123120 s ON p.Brand = s.Brand
ORDER BY s.Total_Sales DESC;

