# Load the necessary library to use read_csv() and other data manipulation functions
library(tidyverse)

# Read the CSV file "hotel_bookings.csv" into a data frame called bookings_df
bookings_df <- read_csv("hotel_bookings.csv")

# Display the first few rows of the data to get a quick preview of the dataset
head(bookings_df)

# Check the structure of the data frame, including column names, data types, and a few sample values
str(bookings_df)

# Get a vector of all column names in the dataset
colnames(bookings_df)

# Create a new data frame (new_df) by selecting only the `adr` and `adults` columns from bookings_df
new_df <- select(bookings_df, `adr`, adults)

# Open a spreadsheet-like view of the new data frame to visually inspect it
View(new_df)

# Add a new column called 'total' to new_df by dividing `adr` (average daily rate) by the number of adults
# This calculates the average daily rate per adult for each booking
mutate(new_df, total = `adr` / adults)
