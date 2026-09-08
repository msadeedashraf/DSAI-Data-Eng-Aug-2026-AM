# 📘 Microsoft Fabric – Case Study Assignment (Decision-Based Learning)

## 🎯 Objective
This assignment is designed to help students:
- Understand **when to use different Microsoft Fabric components**
- Map **business problems → Fabric solutions**
- Justify decisions based on **performance, cost, scalability, and maintainability**

---

## 🧠 Instructions
For each case study:
1. Identify the **correct Fabric components**
2. Explain **WHY you chose them**
3. Explain **WHY you did NOT choose alternatives**
4. Provide a **high-level architecture (diagram or steps)**

---

# 🧩 Case Study 1 — Retail Data Ingestion (Batch)

## What Problem This Solves
Retail companies collect daily sales data from multiple stores and need centralized analytics.

## Scenario
A retail company receives daily CSV sales files from 50 stores.

## Your Task
Design a Fabric solution to:
- Ingest data daily
- Store it efficiently
- Prepare it for reporting

## Questions
1. Which Fabric component will you use for ingestion? Why?
2. Will you use Lakehouse or Warehouse? Justify.
3. How will you handle schema changes over time?
4. What data architecture pattern will you use (e.g., Bronze/Silver/Gold)?

---

# 🧩 Case Study 2 — Real-Time Order Tracking

## What Problem This Solves
Businesses need live monitoring of events such as orders and transactions.

## Scenario
Orders are streaming from an e-commerce platform and must be monitored in real time.

## Your Task
Design a real-time dashboard solution.

## Questions
1. Which Fabric workload supports real-time streaming?
2. How will data flow from ingestion to visualization?
3. Why is batch processing not suitable here?
4. What storage layer will you use for streaming data?

---

# 🧩 Case Study 3 — Financial Reporting Warehouse

## What Problem This Solves
Finance teams require structured, reliable, and consistent reporting.

## Scenario
A finance department needs historical and accurate reporting.

## Your Task
Design a structured reporting solution.

## Questions
1. Why would you choose Warehouse over Lakehouse?
2. How would you design the data model (e.g., star schema)?
3. How do you ensure data consistency and reliability?
4. What ETL/ELT approach would you use?

---

# 🧩 Case Study 4 — Data Transformation at Scale

## What Problem This Solves
Raw data is often messy and needs transformation before analysis.

## Scenario
Incoming data contains duplicates, null values, and inconsistent formats.

## Your Task
Clean and transform the data.

## Questions
1. Would you use Notebooks, Dataflows Gen2, or SQL? Why?
2. When is Spark necessary?
3. How will you handle duplicate records?
4. How do you ensure transformations are reusable?

---

# 🧩 Case Study 5 — Machine Learning Pipeline

## What Problem This Solves
Businesses want predictive insights such as customer churn.

## Scenario
A company wants to predict customer churn using historical data.

## Your Task
Design an ML pipeline using Fabric.

## Questions
1. Which Fabric workload supports machine learning?
2. Where will training data come from?
3. How will you train and evaluate models?
4. How will predictions be integrated into reporting?

---

# 🧩 Case Study 6 — Power BI Performance Optimization

## What Problem This Solves
Slow dashboards reduce usability and business value.

## Scenario
Users report that dashboards are slow and lagging.

## Your Task
Optimize report performance.

## Questions
1. When should you use Direct Lake vs Import mode?
2. How does OneLake improve performance?
3. What common mistakes cause slow reports?
4. How would you redesign the semantic model?

---

# 🧩 Case Study 7 — Multi-Source Data Integration

## What Problem This Solves
Organizations receive data from multiple sources and need a unified system.

## Scenario
Data comes from:
- SQL Server
- REST APIs
- Excel files

## Your Task
Integrate all sources into a unified analytics platform.

## Questions
1. Which Fabric components handle multiple data sources?
2. How will you orchestrate ingestion workflows?
3. How do you standardize data formats?
4. What architecture pattern will you apply?

---

# 🧩 Case Study 8 — Governance and Security

## What Problem This Solves
Sensitive data must be protected and properly managed.

## Scenario
HR and Finance data must be secured and access-controlled.

## Your Task
Design a governance strategy.

## Questions
1. How does OneLake support governance?
2. How will you implement access control?
3. What risks exist without proper governance?
4. How do you track data lineage?

---

# 🧩 Case Study 9 — Cost Optimization

## What Problem This Solves
Cloud costs can grow quickly without proper management.

## Scenario
Fabric usage costs are increasing significantly.

## Your Task
Optimize cost without sacrificing performance.

## Questions
1. What are the main drivers of Fabric cost?
2. How does capacity impact pricing?
3. What optimization strategies would you apply?
4. How do you reduce unnecessary data processing?

---

# 🧩 Case Study 10 — End-to-End Architecture Design

## What Problem This Solves
Modern businesses require integrated, end-to-end data platforms.

## Scenario
A food delivery company needs:
- Real-time order tracking
- Customer analytics (batch)
- Dashboard reporting
- ML recommendations

## Your Task
Design a complete Fabric architecture.

## Questions
1. Draw the full data flow from ingestion to reporting.
2. Which Fabric components are used at each stage?
3. How do batch and real-time systems integrate?
4. Why is Fabric a better choice than separate tools?

---

# 💡 Key Reminder

This assignment is NOT about memorization.

It is about:
👉 Thinking like a Data Engineer / Architect  
👉 Making the RIGHT decisions  
👉 Explaining WHY  

---
