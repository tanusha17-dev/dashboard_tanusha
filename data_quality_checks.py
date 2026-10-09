from pathlib import Path
import pandas as pd

data_path = Path(__file__).resolve().parents[1] / "data" / "retail_sales_sample.csv"
df = pd.read_csv(data_path, parse_dates=["order_date"])
expected_revenue = df["quantity"] * df["unit_price"] * (1 - df["discount_pct"])
checks = {
    "rows": len(df),
    "missing_cells": int(df.isna().sum().sum()),
    "exact_duplicate_rows": int(df.duplicated().sum()),
    "revenue_formula_mismatches": int(((df["revenue"] - expected_revenue).abs() > 0.02).sum()),
    "non_positive_quantity_rows": int((df["quantity"] <= 0).sum()),
}
print("DATA QUALITY CHECKS")
for name, value in checks.items():
    print(f"{name}: {value}")
df["estimated_gross_profit"] = df["revenue"] - df["estimated_cost"]
df["month"] = df["order_date"].dt.to_period("M").astype(str)
monthly = df.groupby("month", as_index=False).agg(
    revenue=("revenue", "sum"),
    estimated_gross_profit=("estimated_gross_profit", "sum"),
    orders=("order_id", "nunique"),
)
out = data_path.parent / "monthly_summary.csv"
monthly.to_csv(out, index=False)
print(f"Monthly summary saved to {out}")
