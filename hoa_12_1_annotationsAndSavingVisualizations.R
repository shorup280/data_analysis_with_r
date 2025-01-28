# Load the necessary library for data manipulation and visualization
library(tidyverse)

# Read the hotel bookings dataset
hotel_bookings <- read.csv("hotel_bookings.csv")

# View the first few rows of the dataset to understand its structure
head(hotel_bookings)

# Display the column names of the dataset to check available variables
colnames(hotel_bookings)

# Create a bar chart to visualize the count of bookings per market segment
# Faceted by hotel type
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +  # Bar chart with market segment on x-axis
  facet_wrap(~hotel)                             # Separate plots for each hotel type

# Extract the minimum and maximum years from the 'arrival_date_year' column
mindate <- min(hotel_bookings$arrival_date_year) # Minimum year in the dataset
maxdate <- max(hotel_bookings$arrival_date_year) # Maximum year in the dataset

# Create a bar chart with a title and subtitle showing the data range
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) + # Rotate x-axis labels for better readability
  labs(
    title = "Comparison of market segments by hotel type for hotel bookings", # Main title
    subtitle = paste0("Data from: ", mindate, " to ", maxdate)               # Subtitle with date range
  )

# Create a similar bar chart with a caption instead of a subtitle
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(
    title = "Comparison of market segments by hotel type for hotel bookings", # Main title
    caption = paste0("Data from: ", mindate, " to ", maxdate)                # Caption with date range
  )

# Add axis labels for clarity
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(
    title = "Comparison of market segments by hotel type for hotel bookings", # Main title
    caption = paste0("Data from: ", mindate, " to ", maxdate),                # Caption with date range
    x = "Market Segment",                                                    # Label for x-axis
    y = "Number of Bookings"                                                 # Label for y-axis
  )

# Save the last plot as a PNG file
ggsave('hotel_booking_chart.png')  # Saves the chart to the working directory
