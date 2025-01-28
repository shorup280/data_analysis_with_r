# Select the 'species' column from the penguins dataset
penguins %>% 
  select(species)

# Select all columns except 'species' from the penguins dataset
penguins %>% 
  select(-species)

# Rename the 'island' column to 'island_new' in the penguins dataset
penguins %>% 
  rename(island_new = island)

# Rename all column names in the penguins dataset to uppercase
rename_with(penguins, toupper)

# Rename all column names in the penguins dataset to lowercase
rename_with(penguins, tolower)

# Clean and standardize all column names in the penguins dataset (e.g., lowercase, snake_case)
clean_names(penguins)
