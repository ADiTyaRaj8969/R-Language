# README.R
# Quick instructions and required packages for the R scripts in this folder
#
# How to run:
# 1. Open R or RStudio in the folder e:/Net/R
# 2. Install required packages (if not already installed):
#    install.packages(c('dplyr','ggplot2','tidyr','lubridate'))
# 3. Run the orchestrator:
#    source('run_all.R')
#
# Files created:
# - generate_sample_data.R : generate synthetic products/orders and write data/sales.csv
# - load_and_preview.R     : load data and print a preview
# - product_summary.R      : compute per-product metrics and write output/product_summary.csv
# - sales_time_series.R    : generate daily revenue plot output/daily_revenue.png
# - customer_segmentation.R: k-means segmentation, writes output/customer_segments.csv
# - cohort_analysis.R      : cohort table output/output/cohort_table.csv
# - recommend_simple.R     : simple item co-purchase recommender example
# - visualizations.R       : helper plotting functions
# - run_all.R              : runs a set of scripts in order
# - README.R               : this file
#
# Notes:
# - The scripts create a data/ directory and an output/ directory for artifacts.
# - For plotting, ggplot2 is used; for more advanced E2E or dashboards consider Shiny or RMarkdown.
# - These scripts are intentionally simple and meant as a starting point. Extend as needed.
