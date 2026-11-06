# E-commerce Inventory Analysis using PostgreSQL

This project involves analysing an online retail inventory dataset containing 3,732 product records using PostgreSQL. The objective is to explore product pricing, discount patterns, stock availability and inventory distribution across product categories.

The analysis aims to derive meaningful insights that could help an online retail business understand its inventory position and support pricing and stock management decisions.

## Technologies Used

**Tools and Technologies**
- PostgreSQL – Database management, data cleaning and SQL-based analysis.
- pgAdmin 4 – Database administration and SQL query execution.

**SQL Concepts and Functions**
- `SELECT`, `WHERE`, `ORDER BY` – Data retrieval, filtering and sorting.
- `DISTINCT` – Identification of unique product categories and names.
- `COUNT()` – Record and category counts.
- `SUM()` and `AVG()` – Inventory valuation, weight calculations and average discounts.
- `GROUP BY` – Category-wise analysis.
- `CASE WHEN` – Classification of products based on weight.
- Arithmetic operations – Price-per-gram and inventory calculations.
- `UPDATE` and `DELETE` – Data correction and cleaning.

## Features

This project provides the following analytical capabilities:

- **Inventory Exploration:** Examine product records, categories and stock availability.
- **Data Quality Assessment:** Identify missing values, repeated product names and pricing inconsistencies.
- **Discount Analysis:** Identify products offering the highest discounts and compare average discounts across categories.
- **Stock Analysis:** Identify high-priced products that are currently out of stock.
- **Inventory Valuation:** Estimate the value of available inventory using discounted selling prices and available quantities.
- **Product Pricing Analysis:** Compare product prices relative to their weight.
- **Weight Classification:** Categorise products into Low, Medium and Bulk weight segments.
- **Inventory Distribution:** Calculate the total physical inventory weight across product categories.

## Project Process

The project was conducted through the following stages:

**Step 1: Database and Table Creation**
- Created a PostgreSQL database table to store product and inventory information.
- Defined appropriate data types and a primary key.

**Step 2: Data Exploration**
- Examined the dataset structure and sample records.
- Checked the total number of records, NULL values and distinct product categories.
- Analysed stock availability and repeated product names.

**Step 3: Data Cleaning**
- Identified invalid pricing records.
- Removed the record with an MRP of zero after validation.
- Standardised MRP and discounted selling prices by converting values from paise to rupees.
- Reviewed the corrected values.

**Step 4: Business Analysis**
- Developed SQL queries to answer eight business-oriented questions.
- Used filtering, aggregation, sorting and conditional logic to analyse inventory characteristics.
- Interpreted query outputs to identify relevant business observations.

## What I Learned

Through this project, I gained practical experience in:

- Creating and managing tables in PostgreSQL.
- Understanding relational database structures and primary keys.
- Performing exploratory data analysis using SQL.
- Identifying and correcting data quality issues.
- Applying aggregate functions and conditional statements.
- Translating business questions into SQL queries.
- Interpreting query results and communicating data-driven observations.

## Next Steps

Potential improvements and extensions to this project include:

- Developing an interactive Power BI dashboard to visualise inventory and pricing trends.
- Performing deeper analysis of category-wise stock availability.
- Incorporating historical inventory and sales data to examine trends over time.
- Analysing relationships between discount percentages and product availability.
- Automating data ingestion and cleaning using Python.
- Expanding the analysis with additional business performance metrics.

## How to Run the Project

**Prerequisites**
- PostgreSQL installed on your system.
- pgAdmin 4 or another PostgreSQL-compatible SQL client.

**Execution Steps**

1. Clone or download this GitHub repository.
2. Open pgAdmin 4 and connect to your PostgreSQL server.
3. Create a new database for the project.
4. Locate the dataset provided in the repository.
5. Import the dataset into PostgreSQL using the appropriate import method.
6. Open the SQL scripts provided in the repository.
7. Execute the scripts in the recommended order:
   - Table creation
   - Data exploration
   - Data cleaning
   - Business analysis
8. Review the query outputs to explore the findings and analytical results.

**Note:** Ensure that the dataset is imported into the correct database and that the table and column names match those referenced in the SQL scripts.


