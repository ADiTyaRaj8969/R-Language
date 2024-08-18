# Data (number of fruits)
fruits <- c(20, 35, 12, 4)
fruit_names <- c("Apples", "Bananas", "Oranges", "Grapes")

# Create the bar chart with a custom color palette
barplot(fruits, names.arg = fruit_names, main = "Fruit Basket",
        col = c("black", "yellow", "orange", "purple"))
# Sample data (replace with your data)
slices <- c(15, 20, 35, 10)
r77labels <- c("Apples", "Bananas", "Oranges", "Grapes")

# Create the pie chart
pie(slices, labels = labels, main = "Pie Chart Title", col = rainbow(length(slices)))

