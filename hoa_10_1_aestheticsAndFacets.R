# Load the required library
library(tidyverse)

# Load the hotel bookings dataset
hotel_bookings <- read.csv("hotel_bookings.csv")

# View the dataset in a spreadsheet-like format
View(hotel_bookings)

# Display the first few rows of the dataset
head(hotel_bookings)

# Display the column names of the dataset
colnames(hotel_bookings)

# Create a bar chart showing the count of bookings for each distribution channel
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel))

# Create a bar chart showing the count of bookings for each distribution channel,
# with bars filled by the deposit type
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel, fill = deposit_type))

# Create a bar chart showing the count of bookings for each distribution channel,
# with bars filled by the market segment
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel, fill = market_segment))

# Create a bar chart for distribution channels and separate the data by market segment
# using facet_wrap to create multiple plots
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~market_segment)

# Create a bar chart for distribution channels and separate the data by deposit type
# using facet_wrap, with x-axis labels rotated for better readability
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))

# Create a bar chart for distribution channels and separate the data by market segment
# using facet_wrap, with x-axis labels rotated for better readability
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~market_segment) +
  theme(axis.text.x = element_text(angle = 45))

# Create a bar chart for distribution channels and separate the data by deposit type
# using facet_grid for a grid layout, with x-axis labels rotated
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_grid(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))

# Create a bar chart for distribution channels and separate the data by both
# deposit type and market segment using facet_wrap, with x-axis labels rotated
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type ~ market_segment) +
  theme(axis.text.x = element_text(angle = 45))
