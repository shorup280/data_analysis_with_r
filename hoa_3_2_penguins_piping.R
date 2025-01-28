# Load the tidyverse package
library(tidyverse)

# Arrange the penguins dataset in ascending order of bill_length_mm
penguins %>% arrange(bill_length_mm)

# Arrange the penguins dataset in descending order of bill_length_mm
penguins %>% arrange(-bill_length_mm)

# Arrange the penguins dataset in descending order of bill_length_mm and save it as penguins2
penguins2 <- penguins %>% arrange(-bill_length_mm)
# View the newly created penguins2 dataset
View(penguins2)

# Group penguins by island, remove rows with missing values, and calculate the mean bill_length_mm for each island
penguins %>% group_by(island) %>% drop_na() %>% summarise(mean_bill_length_mm = mean(bill_length_mm))

# Group penguins by island, remove rows with missing values, and calculate the maximum bill_length_mm for each island
penguins %>% group_by(island) %>% drop_na() %>% summarise(max_bill_length_mm = max(bill_length_mm))

# Group penguins by island, remove rows with missing values, and calculate the minimum bill_length_mm for each island
penguins %>% group_by(island) %>% drop_na() %>% summarise(min_bill_length_mm = min(bill_length_mm))

# Group penguins by both species and island, remove rows with missing values,
# and calculate the max, mean, and min bill_length_mm for each group
penguins %>% group_by(species, island) %>% 
  drop_na() %>% 
  summarise(
    max_bl = max(bill_length_mm), 
    mean_bl = mean(bill_length_mm), 
    min_bl = min(bill_length_mm)
  )

# Filter the dataset to only include penguins of the 'Adelie' species and remove rows with missing values
penguins %>% filter(species == "Adelie") %>% drop_na()
