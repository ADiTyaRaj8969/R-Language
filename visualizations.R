# visualizations.R
# Helper plotting functions used by other scripts

library(ggplot2)

plot_top_products <- function(product_summary, n = 10) {
  topn <- head(product_summary[order(-product_summary$revenue), ], n)
  ggplot(topn, aes(x = reorder(name, revenue), y = revenue, fill = category)) +
    geom_col() + coord_flip() + labs(title = paste('Top', n, 'Products by Revenue'), x = '', y = 'Revenue') +
    theme_minimal()
}

plot_customer_segments <- function(cust_df) {
  ggplot(cust_df, aes(x = orders_count, y = total_spent, colour = segment)) +
    geom_point(alpha = 0.7) + theme_minimal() + labs(title = 'Customer segments')
}

# Save functions
save_plot <- function(plot_obj, filename, width = 10, height = 6) {
  if (!dir.exists('output')) dir.create('output')
  ggsave(filename = file.path('output', filename), plot = plot_obj, width = width, height = height)
  cat('Saved', filename, '\n')
}
