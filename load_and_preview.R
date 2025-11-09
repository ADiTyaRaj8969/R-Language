# load_and_preview.R
# Load generated sales data and show a quick preview

if (!file.exists('data/sales.csv')) {
  cat('data/sales.csv not found — running generate_sample_data.R to create it...\n')
  source('generate_sample_data.R')
}

sales <- read.csv('data/sales.csv', stringsAsFactors = FALSE)

cat('Rows:', nrow(sales), ' Columns:', ncol(sales), '\n')
print(head(sales, 10))
print(summary(sales[c('price','quantity','line_total')]))

# sample aggregations
library(dplyr)
by_product <- sales %>% group_by(product_id, name) %>%
  summarise(total_quantity = sum(quantity), total_revenue = sum(line_total)) %>%
  arrange(desc(total_revenue))

cat('\nTop 5 products by revenue:\n')
print(head(by_product, 5))
