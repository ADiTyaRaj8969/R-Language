# customer_segmentation.R
# Perform a simple k-means segmentation on customer purchasing behavior

library(dplyr)

if (!file.exists('data/sales.csv')) source('generate_sample_data.R')

sales <- read.csv('data/sales.csv', stringsAsFactors = FALSE)

# compute customer-level features: total_spent, orders_count, avg_order_value, recency (days since last order)
library(lubridate)

cust <- sales %>%
  group_by(customer_id) %>%
  summarise(
    total_spent = sum(line_total),
    orders_count = n_distinct(order_id),
    avg_order_value = total_spent / orders_count,
    last_order = max(as.Date(order_date))
  ) %>%
  mutate(recency_days = as.numeric(Sys.Date() - last_order)) %>%
  ungroup()

# prepare features
features <- cust %>% select(total_spent, orders_count, avg_order_value, recency_days)
features_scaled <- scale(features)

# choose k=3 by default
set.seed(42)
km <- kmeans(features_scaled, centers = 3, nstart = 25)
cust$segment <- factor(km$cluster)

if (!dir.exists('output')) dir.create('output')
write.csv(cust, file = 'output/customer_segments.csv', row.names = FALSE)
cat('Wrote output/customer_segments.csv (with segment IDs)\n')
