# Load the tidyverse library for data manipulation and visualization
library(tidyverse)

# Select specific columns ('hotel', 'is_canceled', and 'lead_time') from the 'bookings_df' dataframe
# and save the result as 'trimmed_df'.
trimmed_df <- bookings_df %>% 
  select(hotel, is_canceled, lead_time)

# View the contents of 'trimmed_df' in a tabular format
View(trimmed_df)

# Rename the 'hotel' column in 'trimmed_df' to 'hotel_type' for better clarity.
trimmed_df %>% 
  select(hotel, is_canceled, lead_time) %>% 
  rename(hotel_type = hotel)

# Create a new dataframe, 'example_df', by selecting 'arrival_date_year' and 'arrival_date_month'
# from 'bookings_df'. Combine these two columns into a single column named 'arrival_month_year',
# separated by a space.
example_df <- bookings_df %>%
  select(arrival_date_year, arrival_date_month) %>% 
  unite(arrival_month_year, c("arrival_date_month", "arrival_date_year"), sep = " ")

# View the contents of 'example_df' to check the new column
View(example_df)

# Add a new column called 'guests' to 'bookings_df', which calculates the total number of guests
# by summing up the values in the 'adults', 'children', and 'babies' columns.
example_df <- bookings_df %>%
  mutate(guests = adults + children + babies)

# Display the first few rows of 'example_df' to verify the new 'guests' column.
head(example_df)

# Create a summarized dataframe 'example_df' with the following calculations:
# 1. 'number_canceled': The total number of bookings that were canceled (sum of 'is_canceled').
# 2. 'average_lead_time': The average time in days between booking and arrival (mean of 'lead_time').
example_df <- bookings_df %>%
  summarize(number_canceled = sum(is_canceled),
            average_lead_time = mean(lead_time))

# Display the first few rows of the summarized 'example_df' to review the calculations.
head(example_df)
