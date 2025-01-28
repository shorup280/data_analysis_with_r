# Load the tidyverse library, which includes ggplot2 and dplyr for data manipulation and visualization
library(tidyverse)

# Display the first 6 rows of the diamonds dataset to quickly inspect its content
head(diamonds)

# Open the diamonds dataset in a spreadsheet-like viewer for easier exploration
View(diamonds)

# Display the structure of the dataset, showing the column names, data types, and a preview of the data
str(diamonds)

# Similar to str(), but provides a more user-friendly and compact summary of the dataset
glimpse(diamonds)

# Get the column names of the diamonds dataset
colnames(diamonds)

# Rename a column in the dataset (in this case, renaming "carat_new" back to "carat")
rename(diamonds, carat = carat_new)

# Save the renamed dataset to ensure the change is applied and persists in the diamonds object
diamonds <- rename(diamonds, carat = carat_new)

# Create a scatter plot of price (y-axis) versus carat (x-axis)
# The plot shows the relationship between diamond size (carat) and price
ggplot(data = diamonds, aes(x = carat, y = price)) +
  geom_point()

# Create a scatter plot of price (y-axis) versus carat (x-axis) with points colored by the cut of the diamonds
# Adding "color = cut" maps the cut quality to different colors for better visual distinction
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point()

# Create a scatter plot of price (y-axis) versus carat (x-axis), with points colored by cut quality
# Use facet_wrap(~cut) to create separate panels for each cut quality, making it easier to compare patterns within each group
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point() +
  facet_wrap(~cut)
