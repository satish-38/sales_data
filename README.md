# Sales Data Analysis with SQL Server

This project involves analyzing sales data stored in a CSV file using SQL Server. The dataset includes transactional information such as product details, revenue, region, and payment method.

## 📂 Dataset

**File:** `SalesData.csv`  
**Delimiter:** `;` (semicolon)  
**Columns:**
- `Transaction ID` (INT)
- `Date` (DATE)
- `Product Category` (VARCHAR)
- `Product Name` (VARCHAR)
- `Units Sold` (INT)
- `Unit Price` (DECIMAL)
- `Total Revenue` (DECIMAL)
- `Region` (VARCHAR)
- `Payment Method` (VARCHAR)

## 🏗️ SQL Table Schema

```sql
CREATE TABLE SalesData (
    TransactionID INT PRIMARY KEY,
    Date DATE,
    ProductCategory VARCHAR(100),
    ProductName VARCHAR(150),
    UnitsSold INT,
    UnitPrice DECIMAL(10, 2),
    TotalRevenue DECIMAL(10, 2),
    Region VARCHAR(100),
    PaymentMethod VARCHAR(50)
);
