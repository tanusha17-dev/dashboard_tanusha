# Power BI Build Guide

## Import and model
1. Open Power BI Desktop and import `data/retail_sales_sample.csv`.
2. Name the table `retail_sales_sample`.
3. Set `order_date` to Date, `discount_pct` to Decimal Number, and revenue/cost to Decimal Number.
4. Add measures from `measures.dax`.
5. Create the Calendar table, relate `Calendar[Date]` to `retail_sales_sample[order_date]`, and mark Calendar as the date table.

## Page 1 — Executive Overview
- KPI cards: Total Revenue, Estimated Gross Profit, Estimated Gross Margin %, Total Orders, Average Order Value.
- Line chart: monthly revenue.
- Bar chart: revenue by category.
- Bar chart: revenue by region.
- Slicers: Calendar date, region, category, sales channel.

## Page 2 — Product & Channel
- Bar chart: revenue by product, descending.
- Matrix: category and sales channel with revenue, estimated gross profit, margin.
- Column chart: revenue by sales channel.
- Optional visual: revenue by discount band.

## Validation
- Compare Power BI KPI cards to `ANALYSIS_REPORT.md`.
- Check date slicers and category/region/channel slicers.
- Use total gross profit / total revenue for margin; do not average row-level margin percentages.
- Add a visible note: “Synthetic portfolio dataset; estimated costs are illustrative.”

A static preview is included in `dashboard/retail_sales_dashboard_preview.png`. It is not a `.pbix` file; the editable report must be assembled in Power BI Desktop.
