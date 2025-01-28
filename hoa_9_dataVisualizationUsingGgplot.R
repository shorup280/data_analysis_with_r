# Load the necessary libraries
library(tidyverse)   # Load the tidyverse package for data manipulation and visualization
library(tidyr)       # Load the tidyr package for tidying data
library(palmerpenguins) # Load the palmerpenguins package which contains the penguins dataset

# View the penguins dataset in a separate window
View(penguins)

# Load the penguins dataset (this step is redundant if the dataset is already loaded from palmerpenguins package)
data(penguins)

# Create a scatter plot using ggplot2
ggplot(data = penguins) + 
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))  # Plot flipper length on x-axis and body mass on y-axis


