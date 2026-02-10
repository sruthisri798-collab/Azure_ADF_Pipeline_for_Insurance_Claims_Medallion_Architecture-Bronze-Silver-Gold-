
🚀 Azure ADF Pipeline for Insurance Claims – Medallion Architecture (Bronze–Silver–Gold)

📌 Project Overview

This project implements an end-to-end insurance claims analytics pipeline using Azure Data Factory (ADF) and the Medallion Architecture to transform raw claims data into business-ready fraud insights. The solution enables operations teams to monitor fraud risk, claim trends, and state-level exposure through a curated Power BI semantic layer.

Business Problem

Claims operations lacked a unified view of:
	•	Fraud concentration by state and claim type
	•	Total claim exposure and approval trends
	•	Collision patterns driving inflated payouts

This caused delayed investigations and revenue leakage.

Solution Delivered
	•	Built a Bronze → Silver → Gold data pipeline using Azure ADF
	•	Standardized and validated claims attributes
	•	Created fraud KPIs and risk metrics
	•	Enabled Power BI dashboard for investigation triage

⸻

🏗 Architecture

🔹 Bronze Layer – Raw Ingestion
	•	Source: CSV/flat files (simulated operational claims feed)
	•	Stored as-is with schema preservation
	•	Incremental file landing using ADF pipelines
	•	Audit columns: load_date, source_file, batch_id

🔹 Silver Layer – Cleansed & Standardized
	•	Data quality checks:
	•	Null handling
	•	Amount validation
	•	State code standardization
	•	Fraud flag normalization
	•	Derived fields:
	•	total_claim_amount
	•	claim_type
	•	incident attributes

🔹 Gold Layer – Analytics Mart
	•	Aggregated KPIs:
	•	Fraud Rate %
	•	Total Claim Amount
	•	Fraud Claims
	•	Claim Type Distribution
	•	State and demographic rollups
	•	Power BI semantic model

⸻

🔧 Tech Stack
	•	Azure Data Factory – Orchestration & ETL
	•	Azure Data Lake / SQL – Storage layers
	•	Power BI – Visualization
	•	DAX / SQL – Metrics & transformations
	•	Medallion Architecture – Data modeling

⸻

📊 Key Metrics Built
	•	Fraud Rate % = Fraud Claims / Total Claims
	•	Total Claim Amount by State
	•	Fraud Claims by State
	•	Claim Type Split (Vehicle / Injury / Property)
	•	Collision Type Analysis
	•	Demographic fraud distribution

⸻

📈 Dashboard Capabilities
	•	Executive KPIs for total exposure
	•	State-wise fraud risk comparison
	•	Claim type dollar distribution
	•	Collision pattern insights
	•	Gender & age impact analysis
	•	Interactive triage filters

⸻

🧪 Data Validation Approach
	•	Reconciliation between layers
	•	Amount totals balancing
	•	Duplicate claim checks
	•	Fraud flag consistency
	•	State-level aggregation tests

⸻

🎯 Business Impact
	•	Single source of truth for claims analytics
	•	Faster identification of high-risk states
	•	Improved investigation prioritization
	•	Visibility into vehicle-dominant fraud patterns
	•	Executive-ready reporting

⸻
🚦 Future Enhancements
	•	ML fraud propensity model
	•	Provider/shop risk scoring
	•	Repeat offender detection
	•	Time-to-report anomaly
	•	Adjuster performance metrics


