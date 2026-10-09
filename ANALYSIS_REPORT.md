# Retail Sales Performance Analysis — Findings

## Executive summary
This analysis uses **1,200 synthetic retail transaction lines** dated from January through December 2025. The dataset is generated for portfolio practice and does not represent a real company or employer.

| KPI | Result |
|---|---:|
| Total revenue | $674,892.65 |
| Estimated cost | $477,386.17 |
| Estimated gross profit | $197,506.48 |
| Estimated gross margin | 29.26% |
| Distinct orders | 1,200 |
| Distinct customers | 238 |
| Average order value | $562.41 |
| Units sold | 3,527 |

## Findings
1. **Leading category:** Electronics, with $420,139.27 in revenue (62.3% of total revenue).
2. **Leading product:** Laptop, with $375,243.76 in revenue.
3. **Leading region:** West, with $184,366.86 in revenue.
4. **Leading channel by revenue:** Online, with $349,146.13 in revenue.
5. **Highest-revenue month:** 2025-04, with $65,889.26. Lowest-revenue month: 2025-09, with $36,820.87.
6. Revenue associated with transactions receiving any discount is $413,514.04 (61.3% of revenue).

## Data validation
- Rows: 1,200
- Missing cells: 0
- Exact duplicate rows: 0
- Revenue formula mismatches (tolerance $0.02): 0

The generated dataset passes these basic checks. This is not a full production data-quality audit.

## Business recommendations (hypotheses to investigate)
- Review the product/category mix in the highest-revenue segments and check whether estimated margin remains attractive.
- Compare monthly revenue changes with promotions, seasonality, stock availability, and traffic before attributing causes.
- Compare online and in-store results using both revenue and margin, not revenue alone.
- Evaluate discounts using incremental profit and conversion data if those fields become available.

## Limitations
- Data is synthetic, not actual business performance.
- Costs are simulated estimates; gross profit and margin are illustrative, not accounting-grade.
- The dataset does not include returns, inventory, shipping, marketing spend, or order status.
- This data is suitable for demonstrating analysis workflow, not for making real operational decisions.
