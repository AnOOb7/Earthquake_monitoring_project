# Earthquake Monitoring Lakehouse (Databricks)

This project implements a real-time data engineering pipeline using Azure Databricks and Delta Live Tables.

Architecture
USGS Earthquake API
        ↓
Unity Catalog Volume (Bronze)
        ↓
Delta Live Tables (Silver)
        ↓
Delta Lake (Gold)
        ↓
Databricks SQL Dashboard

Tech Stack

Azure Databricks
Unity Catalog
Delta Live Tables
PySpark
SQL
REST APIs

### What it does

Ingests live earthquake data from USGS REST API

Stores raw JSON in Unity Catalog Volumes (Bronze)

Uses Delta Live Tables to flatten and clean data (Silver)

Creates analytical Gold tables

Powers a live dashboard with trends, country distribution and severity

### Gold Tables

earthquake_by_country
earthquake_by_magnitude
earthquake_daily

### Dashboards

Earthquake distribution by country
Magnitude severity
Daily trend
