# Retail Sales Performance Analysis — Data Analyst Portfolio

**Author:** Tanusha Srivastava  
**Target role:** Data Analyst  
**Tools:** SQL, Excel, Power BI, Python  
**Dataset:** Synthetic data created for this portfolio; no employer/client data is included.

## Project objective
Analyze a fictional retailer's 2025 transactions to understand sales, estimated profitability, category/product performance, regions, channels, and monthly trends.

## Business questions
- What are total revenue, estimated gross profit, and estimated gross margin?
- Which category, product, region, and channel lead by revenue?
- Which months have the highest and lowest revenue?
- What share of revenue comes from discounted transactions?
- Do the transaction records pass basic validation checks?

## Verified results
- **Total revenue:** $674,892.65
- **Estimated gross profit:** $197,506.48
- **Estimated gross margin:** 29.26%
- **Distinct orders:** 1,200
- **Unique customers:** 238
- **Average order value:** $562.41
- **Top category:** Electronics
- **Top product:** Laptop
- **Top region:** West
- **Top channel:** Online
- **Highest revenue month:** 2025-04

More detail and limitations are in [`ANALYSIS_REPORT.md`](ANALYSIS_REPORT.md).

## Files
- `data/retail_sales_sample.csv` — 1,200 synthetic order lines.
- `sql/analysis_queries.sql` — SQL KPI, trend, segmentation, ranking, and validation queries.
- `python/data_quality_checks.py` — repeatable Python validation and monthly summary.
- `excel/retail_sales_analysis.xlsx` — raw transactions and KPI/segment summaries.
- `power_bi/measures.dax` — DAX measures.
- `power_bi/dashboard_build_guide.md` — instructions for building an editable Power BI report.
- `dashboard/retail_sales_dashboard_preview.png` — static preview image.

## Dashboard status
A static dashboard preview and Power BI measures/build instructions are included. An editable `.pbix` file is not included because Power BI Desktop is required to assemble and save the native report.

## How to reproduce
1. Import the CSV into a SQL database as `retail_sales`.
2. Run queries in `sql/analysis_queries.sql`.
3. Run `python python/data_quality_checks.py` from the project root (requires pandas).
4. Open the Excel workbook for prepared summaries.
5. In Power BI Desktop, import the CSV and follow the guide; compare KPIs to the report.
6. Upload the repository to GitHub and add a screenshot of your finished interactive Power BI report.

## Resume entry
**Retail Sales Performance Analysis | SQL, Excel, Power BI, Python**  
Analyzed 1,200 synthetic retail transaction records to evaluate revenue, estimated profitability, and product, regional, and channel trends; validated calculations with Python/SQL and prepared KPI summaries in Excel, with Power BI measures and dashboard design for interactive reporting.

## Important limitations
- This is a practice dataset, not real company performance.
- Costs are randomly simulated; margin figures are illustrative, not accounting-grade.
- Returns, inventory, shipping, marketing spend, and order status are not included.
- Do not describe this as client or employer work.

- <img width="1318" height="742" alt="image" src="https://github.com/user-attachments/assets/bc5c6901-e5a8-45e3-a297-3fbf3db556ab" />

