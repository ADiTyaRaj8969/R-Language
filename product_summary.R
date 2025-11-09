# product_summary.R
# Compute product-level statistics and export a summary CSV

library(dplyr)

if (!file.exists('data/sales.csv')) source('generate_sample_data.R')
sales <- read.csv('data/sales.csv', stringsAsFactors = FALSE)

product_summary <- sales %>%
  group_by(product_id, name, category) %>%
  summarise(
    units_sold = sum(quantity),
    revenue = sum(line_total),
    avg_price = mean(price),
    orders = n_distinct(order_id)
  ) %>%
  arrange(desc(revenue))

if (!dir.exists('output')) dir.create('output')
write.csv(product_summary, file = 'output/product_summary.csv', row.names = FALSE)
cat('Wrote output/product_summary.csv\n')
