# Load the required libraries
library(ggplot2)       # For creating data visualizations
library(palmerpenguins) # For the Palmer Penguins dataset

# View the dataset to inspect its structure and contents
View(penguins)

# Create a scatter plot to analyze the relationship between flipper length and body mass
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm,   # Flipper length on the x-axis
                           y = body_mass_g,         # Body mass on the y-axis
                           color = species)) +      # Different species distinguished by color
  labs(
    title = "Palmer Penguins: Body Mass Vs Flipper Length",  # Main title of the plot
    subtitle = "Sample of Three Penguin Species",           # Subtitle for additional context
    caption = "Data collected by Dr. Kristen Gorman"        # Caption acknowledging the source
  ) +
  annotate(
    "text",                                    # Add a text annotation to highlight key insight
    x = 220,                                  # x-coordinate for the annotation
    y = 3500,                                 # y-coordinate for the annotation
    label = "The Gentoos are the largest",    # The text to display
    color = "purple",                         # Text color
    fontface = "bold",                        # Bold text
    size = 3.5,                               # Text size
    angle = 25                                # Angle of the text
  )
