# Step 1: Load necessary libraries
# - tidyverse: Includes dplyr, ggplot2, and other useful packages for data manipulation and visualization
# - skimr: Provides functions to skim through datasets and summarize key statistics
# - janitor: Provides functions for cleaning and tidying column names
# - readr: Contains functions to read datasets (e.g., read_csv)

library(tidyverse)  # Core library for data wrangling and visualization
library(skimr)      # Provides summary statistics of data
library(janitor)    # For cleaning column names
library(readr)      # For reading CSV files

# Step 2: Set the working directory to where the dataset is located
setwd("F:/GoogleDataAnalytics/dataAnalysisWithRProgramming/workingDatasets/handsOnActivity")

# Step 3: Read the 'hotel_bookings.csv' dataset and load it into a dataframe
hotel_bookings <- read_csv("hotel_bookings.csv")

# Step 4: View the first few rows of the dataset in a tabular format
View(hotel_bookings)

# Step 5: Check the structure of the dataset, which provides information on column types and data types
str(hotel_bookings)

# Step 6: Glimpse the first few rows along with column data types for a quick overview
glimpse(hotel_bookings)

# Step 7: View the column names to understand the structure of the data
colnames(hotel_bookings)

# Step 8: Arrange the dataset by descending lead time
# - This sorts the dataset by the 'lead_time' column in descending order
df_hotel_bookings <- hotel_bookings %>%
  arrange(desc(lead_time))

# Step 9: View the arranged dataset
View(df_hotel_bookings)

# Step 10: Use arrange() again but this time without assigning it to a new variable
# - This will sort the dataframe and display it in the console
arrange(df_hotel_bookings, desc(lead_time))

# Step 11: Trying to use arrange on a single value (not valid syntax for 'arrange')
# - This will cause an error, as 'arrange' is for dataframes, not individual values
arrange(max(hotel_bookings$lead_time))  # Will result in an error

# Step 12: Find the maximum lead time in the dataset
# - na.rm = TRUE ensures missing values (NA) are ignored
max_lead_time <- max(hotel_bookings$lead_time, na.rm = TRUE)

# Step 13: Print the maximum lead time
print(max_lead_time)

# Step 14: Calculate and print the mean lead time of the dataset
mean_lead_time <- mean(hotel_bookings$lead_time, na.rm = TRUE)
print(mean_lead_time)

# Step 15: Group the data by the 'hotel' column and calculate the average, min, and max lead time for each hotel
# - This summarizes lead time statistics for both "City Hotel" and "Resort Hotel"
hotel_summary <- hotel_bookings %>%
  group_by(hotel) %>%
  summarise(
    average_lead_time = mean(lead_time, na.rm = TRUE),  # Calculate the average lead time for each hotel
    min_lead_time = min(lead_time, na.rm = TRUE),        # Calculate the minimum lead time for each hotel
    max_lead_time = max(lead_time, na.rm = TRUE)         # Calculate the maximum lead time for each hotel
  )

# Step 16: View the summarized results
View(hotel_summary)

