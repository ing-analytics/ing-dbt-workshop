{% docs stg_orders_doc %}
# Staging: Orders Table

## Overview
The `stg_orders` model stages raw order data from the e-commerce source system. It performs critical data transformations including:
- Normalizing column names to a consistent naming convention
- Converting monetary amounts from cents to dollars
- Adding a primary key (`order_id`)

## Purpose
This staging table serves as the foundation for all downstream analytics on order data. It ensures data quality through:
- Not-null and uniqueness constraints on the order ID
- Validation that subtotal is always less than or equal to the order total

## Data Freshness
Expected to be updated with each ETL run (typically daily).

## Key Metrics
- Total records: Updated on each run
- Date range: Contains orders from the e-commerce system
- Grain: One row per order

{% enddocs %}

{% docs raw_orders_source %}
# Raw Orders Source Table

## Overview
The `raw_orders` table contains the raw, unprocessed order transactions from the e-commerce system. This is the system of record for order data.

## Data Characteristics
- **Format**: CSV file
- **Location**: `~/Developer/Learning/ing-dbt-workshop/jaffle_data/raw_orders.csv`
- **Grain**: One row per order transaction
- **Freshness**: Should be refreshed daily

## Columns
- `id`: Unique order identifier
- `customer`: Customer ID associated with the order
- `tax_paid`: Tax amount in cents
- `store_id`: Physical store where order was placed
- `order_total`: Total order amount in cents
- `subtotal`: Order subtotal (before tax) in cents

## Business Rules
- Each order is associated with exactly one customer
- Order total must be greater than or equal to subtotal
- Tax paid should be non-negative

{% enddocs %}

{% docs mrt_customer_agg_doc %}
# Mart: Customer Aggregation

## Overview
The `mrt_customer_agg` model provides customer-level business metrics aggregated from order data. This is a key table for customer analytics and reporting.

## Purpose
This mart enables:
- Customer lifetime value (LTV) analysis
- Customer purchase behavior analysis
- Customer segmentation based on order frequency and spending

## Key Metrics
- **total_orders**: Count of all orders for each customer
- **total_spent**: Sum of order totals for each customer in dollars

## Grain
One row per unique customer.

## Refresh Schedule
Updated with each ETL run to reflect latest order data.

## Usage Notes
- Used extensively in customer reporting dashboards
- Provides input to customer segmentation models
- Should be materialized as a table for performance

{% enddocs %}

{% docs ecom_source_doc %}
# E-commerce Raw Data Source

## Overview
The e-commerce (`ecom`) source is the primary data source for all jaffle shop analytics. It contains raw transaction and master data from the e-commerce platform.

## Connection Details
- **Format**: CSV files
- **Base Location**: `~/Developer/Learning/ing-dbt-workshop/jaffle_data/`
- **Files**: Individual CSV files for each table (e.g., `raw_orders.csv`)

## Tables Included
This source contains the following tables:
1. `raw_customers`: Customer master data
2. `raw_orders`: Order transactions
3. `raw_items`: Order line items
4. `raw_stores`: Store location details
5. `raw_products`: Product catalog
6. `raw_supplies`: Supply chain data

## Data Quality Notes
- Raw data is unvalidated and may contain quality issues
- All staging models should include appropriate quality tests
- Expect occasional data inconsistencies typical of raw operational data

## Support & Questions
Contact the data engineering team for questions about source data quality or schema changes.

{% enddocs %}
