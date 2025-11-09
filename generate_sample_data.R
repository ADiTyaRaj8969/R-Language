# generate_sample_data.R
# Generate synthetic ecommerce dataset: products, customers, orders
# Writes a CSV file to data/sales.csv

set.seed(123)

# create directories
if (!dir.exists("data")) dir.create("data")

# Products
n_products <- 50
products <- data.frame(
  product_id = sprintf("P%03d", 1:n_products),
  name = paste("Product", 1:n_products),
  category = sample(c("Books","Electronics","Toys","Home","Clothing"), n_products, replace = TRUE),
  price = round(runif(n_products, 5, 500), 2),
  stringsAsFactors = FALSE
)

# Customers
n_customers <- 200
customers <- data.frame(
  customer_id = sprintf("C%04d", 1:n_customers),
  join_date = sample(seq(as.Date('2023-01-01'), as.Date('2024-12-31'), by = 'day'), n_customers, replace = TRUE),
  stringsAsFactors = FALSE
)

# Orders
n_orders <- 1500
order_dates <- sample(seq(as.Date('2024-01-01'), Sys.Date(), by = 'day'), n_orders, replace = TRUE)
orders <- data.frame(
  order_id = sprintf("O%05d", 1:n_orders),
  customer_id = sample(customers$customer_id, n_orders, replace = TRUE),
  order_date = order_dates,
  stringsAsFactors = FALSE
)

# Order items (1-5 items per order)
order_items <- do.call(rbind, lapply(1:n_orders, function(i) {
  k <- sample(1:5, 1)
  prods <- sample_n <- sample(products$product_id, k, replace = FALSE)
  qtys <- sample(1:3, k, replace = TRUE)
  data.frame(
    order_id = orders$order_id[i],
    product_id = prods,
    quantity = qtys,
    stringsAsFactors = FALSE
  )
}))

# join prices
order_items <- merge(order_items, products[c('product_id','price')], by = 'product_id')
order_items$line_total <- round(order_items$quantity * order_items$price, 2)

# final sales table (one row per line item)
sales <- merge(order_items, orders[c('order_id','customer_id','order_date')], by = 'order_id')
sales <- merge(sales, products[c('product_id','name','category')], by = 'product_id')

# shuffle rows
sales <- sales[sample(nrow(sales)), ]

# write to CSV
write.csv(sales, file = 'data/sales.csv', row.names = FALSE)
cat('Generated data/data/sales.csv with', nrow(sales), 'rows\n')
