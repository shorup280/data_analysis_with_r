# Load the ggplot2 library for visualization and the palmerpenguins dataset
library(ggplot2)
library(palmerpenguins)

# Scatterplot of flipper length vs. body mass, colored by species
# Separate plots (facets) are created for each species
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  facet_wrap(~species)  # Create individual facets for each species

# Bar chart showing the count of diamonds for each color, with bars filled by cut type
# Separate plots (facets) are created for each cut type
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = color, fill = cut)) +
  facet_wrap(~cut)  # Create individual facets for each cut type

# Scatterplot of flipper length vs. body mass, colored by species
# Create a grid of plots with rows based on `sex` and columns based on `species`
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  facet_grid(sex ~ species)  # Facet grid with `sex` as rows and `species` as columns

# Scatterplot of flipper length vs. body mass, colored by species
# Create a single row of facets for each species
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  facet_grid(~species)  # Facet grid with species as columns only
