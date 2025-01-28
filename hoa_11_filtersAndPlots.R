# Load the tidyverse library, which includes ggplot2 and dplyr for data manipulation and visualization
library(tidyverse)

# Read the hotel bookings dataset from a CSV file
hotel_bookings <- read.csv("hotel_bookings.csv")

# Create a scatter plot showing the relationship between lead time and the number of children
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))  # Scatter plot with lead_time on x-axis and children on y-axis

# Create a bar chart to compare the number of bookings by hotel type, grouped by market segment
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel, fill = market_segment))  # Bar chart with hotel types as x-axis and grouped by market_segment

# Create a bar chart to compare the number of bookings by hotel type, separated by market segment using facets
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel)) +                     # Bar chart with hotel types on the x-axis
  facet_wrap(~market_segment)                              # Separate the chart into panels based on market_segment

# Display the column names of the dataset to ensure correct column referencing
colnames(hotel_bookings)

# Filter the dataset to include only rows where the hotel is "City Hotel" and market_segment is "Online TA"
onlineta_city_hotels <- filter(hotel_bookings, 
                               (hotel == "City Hotel" & 
                                  hotel_bookings$market_segment == "Online TA"))
# View the filtered dataset
View(onlineta_city_hotels)

# Alternate way of filtering using the pipe operator (%>%) for cleaner syntax
onlineta_city_hotels_v2 <- hotel_bookings %>%
  filter(hotel == "City Hotel") %>%                         # Filter rows where hotel is "City Hotel"
  filter(market_segment == "Online TA")                    # Further filter rows where market_segment is "Online TA"

# View the second filtered dataset
View(onlineta_city_hotels_v2)

# Create a scatter plot for the filtered dataset showing the relationship between lead time and the number of children
ggplot(data = onlineta_city_hotels) +
  geom_point(mapping = aes(x = lead_time, y = children))  # Scatter plot with lead_time on x-axis and children on y-axis
