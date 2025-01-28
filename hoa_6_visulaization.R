# Load the tidyverse package for data manipulation and visualization
library(tidyverse)

# Install the Tmisc package (used for accessing the 'quartet' dataset)
install.packages('Tmisc')
library(Tmisc)

# Load the 'quartet' dataset into your R session
data(quartet)
View(quartet)  # View the dataset in a table format in RStudio

# Summarize the 'quartet' dataset:
# - Group by the 'set' column
# - Calculate mean and standard deviation of x and y
# - Calculate the correlation between x and y for each group
quartet %>% 
  group_by(set) %>% 
  summarize(
    mean_x = mean(x),      # Mean of x
    sd_x = sd(x),          # Standard deviation of x
    mean_y = mean(y),      # Mean of y
    sd_y = sd(y),          # Standard deviation of y
    correlation = cor(x, y) # Correlation between x and y
  )

# Load ggplot2 for plotting
library(ggplot2)

# Create a scatter plot for the 'quartet' dataset
ggplot(quartet, aes(x, y)) + 
  geom_point() +                           # Add points for each data value
  geom_smooth(method = lm, se = FALSE) +   # Add a linear regression line without confidence intervals
  facet_wrap(~set)                         # Create separate plots for each 'set' in the dataset

# Install the 'datasauRus' package (used for the datasaurus_dozen dataset)
install.packages("datasauRus")
library('datasauRus')

# Create a scatter plot for the 'datasaurus_dozen' dataset:
# - Different colors for each 'dataset'
# - Facet (separate) plots for each unique 'dataset'
ggplot(datasaurus_dozen, aes(x = x, y = y, colour = dataset)) +
  geom_point() +                           # Add points for each data value
  theme_void() +                           # Use a minimal theme with no gridlines or axes
  theme(legend.position = "none") +        # Remove the legend
  facet_wrap(~dataset, ncol = 3)           # Arrange facets (plots) in 3 columns
%>% 