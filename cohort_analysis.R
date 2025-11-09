# cohort_analysis.R
# Simple cohort analysis: cohort by first purchase month and retention

library(dplyr)

if (!file.exists('data/sales.csv')) source('generate_sample_data.R')

sales <- read.csv('data/sales.csv', stringsAsFactors = FALSE)
sales$order_date <- as.Date(sales$order_date)

# get first purchase month per customer
first_order <- sales %>% group_by(customer_id) %>% summarise(first_order = min(order_date))
first_order$cohort_month <- format(first_order$first_order, '%Y-%m')

sales2 <- merge(sales, first_order, by = 'customer_id')

# cohort retention: for each cohort_month and purchase month, compute % of customers
sales2$purchase_month <- format(sales2$order_date, '%Y-%m')

cohort_table <- sales2 %>%
  group_by(cohort_month, purchase_month) %>%
  summarise(customers = n_distinct(customer_id)) %>%
  ungroup()

# pivot wider
cohort_wide <- tidyr::pivot_wider(cohort_table, names_from = purchase_month, values_from = customers, values_fill = 0)

if (!dir.exists('output')) dir.create('output')
write.csv(cohort_wide, file = 'output/cohort_table.csv', row.names = FALSE)
cat('Wrote output/cohort_table.csv\n')
