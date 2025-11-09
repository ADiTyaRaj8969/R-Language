# recommend_simple.R
# Simple item-based recommender using co-purchase counts (association by orders)

library(dplyr)

if (!file.exists('data/sales.csv')) source('generate_sample_data.R')

sales <- read.csv('data/sales.csv', stringsAsFactors = FALSE)

# build order -> products list
order_products <- sales %>% group_by(order_id) %>% summarise(products = list(unique(product_id)))

# compute co-occurrence matrix (counts)
co_occ <- list()
for (i in seq_len(nrow(order_products))) {
  prods <- order_products$products[[i]]
  if (length(prods) < 2) next
  combs <- t(combn(prods, 2))
  for (r in seq_len(nrow(combs))) {
    a <- combs[r,1]; b <- combs[r,2]
    key1 <- paste(a,b,sep='|'); key2 <- paste(b,a,sep='|')
    co_occ[[key1]] <- (co_occ[[key1]] %||% 0) + 1
    co_occ[[key2]] <- (co_occ[[key2]] %||% 0) + 1
  }
}

# helper: recommend top N for a given product
recommend_for <- function(product_id, N = 5) {
  keys <- names(co_occ)[grepl(paste0('^', product_id, '\\|'), names(co_occ))]
  if (length(keys) == 0) return(character(0))
  pairs <- sapply(keys, function(k) strsplit(k, '\\|')[[1]][2])
  scores <- sapply(keys, function(k) co_occ[[k]])
  df <- data.frame(product = pairs, score = scores, stringsAsFactors = FALSE)
  df <- df[order(-df$score), ]
  head(df$product, N)
}

# example: recommend for first product
some_prod <- unique(sales$product_id)[1]
cat('Recommendations for', some_prod, ':', paste(recommend_for(some_prod), collapse = ', '), '\n')
