# sales_time_series.R
# Aggregate sales by date and produce a simple time series plot

if (!file.exists('data/sales.csv')) source('generate_sample_data.R')

sales <- read.csv('data/sales.csv', stringsAsFactors = FALSE)
sales$order_date <- as.Date(sales$order_date)

library(dplyr)
library(ggplot2)

daily <- sales %>% group_by(order_date) %>% summarise(daily_revenue = sum(line_total), daily_orders = n_distinct(order_id))

if (!dir.exists('output')) dir.create('output')

# simple plot
p <- ggplot(daily, aes(x = order_date, y = daily_revenue)) +
  geom_line(color = '#2c3e50') +
  labs(title = 'Daily Revenue', x = 'Date', y = 'Revenue') +
  theme_minimal()

ggsave(filename = 'output/daily_revenue.png', plot = p, width = 10, height = 4)
cat('Saved output/daily_revenue.png\n')
