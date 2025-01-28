# Load the ggplot2 library for data visualization and palmerpenguins dataset
library(ggplot2)
library(palmerpenguins)

# Scatterplot with points showing the relationship between flipper length and body mass
# Shapes and colors represent different penguin species
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, shape = species, color = species))

# Scatterplot where transparency (alpha) represents different penguin species
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, alpha = species))

# Add a smoothed trend line to visualize the overall pattern and points for individual data
ggplot(data = penguins) +
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g)) +  # Trend line
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))    # Points for raw data

# Add a smoothed trend line with linetype indicating different penguin species
ggplot(data = penguins) +
  geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype = species))

# Scatterplot with jitter to reduce overlap of points with similar values
ggplot(data = penguins) +
  geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g))

# Bar chart showing the count of diamonds for each cut type
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut))

# Bar chart showing the count of diamonds for each cut type, with bars filled by cut type
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = cut))

# Bar chart showing the count of diamonds for each cut type, with bars filled by clarity
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity))
