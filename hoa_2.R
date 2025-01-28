# Load the ToothGrowth dataset and view it in a table format
data("ToothGrowth")
View(ToothGrowth)

# Filter the data to include only rows where dose equals 0.5
filtered_tg <- filter(ToothGrowth, dose == 0.5)

# Arrange the filtered data by the len column in ascending order
arrange(filtered_tg, len)

# Filter the data where dose equals 0.5, then arrange it by len in one step
arrange(filter(ToothGrowth, dose == 0.5), len)

# Filter the data where dose equals 0.5 and then arrange it by len using the pipe operator
filtered_toothgrowth <- ToothGrowth %>%
  filter(dose == 0.5) %>%  # Keep only rows where dose is 0.5
  arrange(len)             # Sort the filtered rows by len (length)

# Print the filtered and arranged data
filtered_toothgrowth

# Filter the data for dose 0.5, group it by supp (type of supplement),
# and calculate the mean length (len) for each group
filtered_toothgrowth <- ToothGrowth %>%
  filter(dose == 0.5) %>%  # Keep only rows where dose is 0.5
  group_by(supp) %>%       # Group the data by supplement type (supp)
  summarise(
    mean_len = mean(len, na.rm = TRUE), # Calculate the mean len for each group
    .group = "drop"                     # Ungroup the data after summarising
  )

