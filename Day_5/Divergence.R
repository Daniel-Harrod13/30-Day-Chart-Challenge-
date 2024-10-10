# Load necessary libraries
library(ggplot2)
library(dplyr)

# Ensure that your dataframe is correctly loaded as `evolution_df`
# Replace `data` with the correct dataframe name if needed
data <- read.csv("/Users/danielharrod/Desktop/30_Day_Chart_Challenge/Day_5/evo_data.csv")

# If your dataframe is named differently, replace `data` with the correct name

evolution_df <- data  

# Print the column names to verify (optional)
print(names(evolution_df))

# Step 1: Calculate the mean cranial capacity and deviation
evolution_df <- evolution_df %>%
  mutate(mean_cranial = mean(`Cranial_Capacity`, na.rm = TRUE)) %>%  # Calculate mean cranial capacity
  mutate(deviation = `Cranial_Capacity` - mean_cranial)              # Calculate deviation from mean

# Step 2: # Create the diverging bar chart with left-aligned, styled title
ggplot(evolution_df, aes(x = reorder(`Genus_._Specie`, deviation), y = deviation, fill = deviation > 0)) +
  geom_bar(stat = "identity", show.legend = FALSE) +
  scale_fill_manual(values = c("TRUE" = positive_color, "FALSE" = negative_color)) +  # Custom colors
  coord_flip() +  # Flip for horizontal bars
  labs(
    title = "Divergence in Cranial Capacity of Hominid Species",
    subtitle = "This chart visualizes how various hominid species deviate from the average cranial capacity.\nPositive values indicate species with larger cranial capacities, while negative values indicate smaller capacities.",
    x = "Species",
    y = "Deviation from Average Cranial Capacity",
    caption = "Data Source: Evolutionary Dataset"
  ) +
  theme_minimal() +
  theme(
    # Title and subtitle alignment, style, and spacing adjustments
    plot.title = element_text(size = 22, face = "bold.italic", hjust = -0.1, family = "Arial", margin = margin(t = 10, b = 15)),  # Left-align the title (hjust = -0.1) and use bold italic styling
    plot.subtitle = element_text(size = 12, hjust = -0.1, family = "Arial", color = "grey50", margin = margin(b = 30)),  # Left-align subtitle too
    
    # Axis titles and text styles
    axis.title = element_text(size = 12, family = "Arial"),
    axis.text.y = element_text(size = 10, family = "Arial", margin = margin(r = 15)),  # Increased space between y-axis labels
    axis.text = element_text(size = 10, family = "Arial"),
    
    # Caption styling
    plot.caption = element_text(size = 9, color = "grey40", hjust = -0.1, family = "Arial", margin = margin(t = 20)),  # Uncentered caption
    
    # Remove grid lines
    panel.grid = element_blank(),
    
    # Adjust left margin to accommodate the left-aligned title
    plot.margin = margin(l = 30, r = 20, t = 20, b = 20)  # Add more space on the left (l = 30)
  ) 
  