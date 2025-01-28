# Load the tidyverse package for data manipulation and visualization
library(tidyverse)

# Load the readr package (part of tidyverse) for reading datasets
library(readr)

# Read the CSV file named "hotel_bookings.csv" and save it to the variable `hotel_bookings`
hotel_bookings <- read.csv("hotel_bookings.csv")

# View the dataset in a spreadsheet-like viewer for quick inspection
View(hotel_bookings)

# Display the first few rows of the dataset to understand its structure and sample data
head(hotel_bookings)

# Display all the column names in the dataset to get an overview of available variables
colnames(hotel_bookings)

# Create a scatterplot to explore the relationship between lead time (x-axis) and children (y-axis)
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))
# Explanation:
# - `lead_time` is the time between booking and arrival.
# - `children` is the number of children included in a booking.
# - This plot helps analyze whether bookings with children tend to have longer or shorter lead times.

# Create another scatterplot to explore the relationship between stays in weekend nights (x-axis) and children (y-axis)
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = stays_in_weekend_nights, y = children))
# Explanation:
# - `stays_in_weekend_nights` is the number of weekend nights booked.
# - `children` is the number of children included in a booking.
# - This plot helps analyze whether bookings with children are associated with more or fewer weekend stays.
