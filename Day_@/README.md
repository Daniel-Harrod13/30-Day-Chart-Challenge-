Global Trends in Nuclear Energy Production

This project is part of the 30-Day Chart Challenge (Day 2) and focuses on visualizing global trends in nuclear energy production among the top five nuclear energy-producing countries. The visualization highlights significant nuclear incidents and adopts a "Neo" theme with neon colors on a dark background.

Table of Contents

Description
Visualization
Dependencies
Data Source
How to Run the Code
Citation
Author
Description

The project visualizes nuclear electricity generation from 1965 to 2020 for the following top five countries:

United States
France
South Korea
Russia
Germany
Significant nuclear incidents are annotated on the chart:

1979: Three Mile Island accident in the United States
1986: Chernobyl disaster in Ukraine (formerly USSR)
2011: Fukushima disaster in Japan
The visualization employs neon colors against a dark background to create a futuristic "Neo" aesthetic.

Visualization

Dependencies

Ensure you have the following R packages installed:

tidyverse
scales
ggthemes
You can install them using:

R
Copy code
install.packages(c("tidyverse", "scales", "ggthemes"))
Data Source

Data is sourced from:

Our World in Data (2023). Energy Data. GitHub repository. Retrieved from https://github.com/owid/energy-data
How to Run the Code

1. Download the Dataset
Download the owid-energy-data.csv file from the GitHub repository and save it to your desired directory.

2. Set Your Working Directory
Ensure your working directory in R is set to the location where you've saved the dataset. You can set it using:

R
Copy code
setwd("/path/to/your/directory")
3. Load the Required Packages
R
Copy code
# Load the packages
library(tidyverse)
library(scales)
library(ggthemes)
4. Read the Data
R
Copy code
# Read the data
energy_data <- read.csv("owid-energy-data.csv")
5. Prepare the Data
R
Copy code
# Filter out regions and select relevant columns
nuclear_data <- energy_data %>%
  filter(!str_starts(iso_code, "OWID_")) %>%
  select(country, year, nuclear_electricity) %>%
  filter(!is.na(nuclear_electricity))

# Define the countries you want to include
countries_to_include <- c("United States", "France", "South Korea", "Russia", "Germany")

# Filter the data for these countries
nuclear_top <- nuclear_data %>%
  filter(country %in% countries_to_include)
6. Define Neon Colors for the Countries
R
Copy code
# Define neon colors for the countries
neon_colors <- c(
  "United States" = "#39FF14",  # Neon Green
  "France"        = "#FF073A",  # Neon Red
  "South Korea"   = "#FF6EC7",  # Neon Pink
  "Russia"        = "#0FF0FC",  # Neon Cyan
  "Germany"       = "#FDFE02"   # Neon Yellow
)
7. Plot the Data
R
Copy code
# Maximum y-value for positioning annotations
max_y <- max(nuclear_top$nuclear_electricity)

# Subtitle text with line breaks
subtitle_text <- "This chart illustrates how nuclear energy production has evolved in the top five countries from 1965 to 2020,\nhighlighting the impact of major nuclear incidents such as Three Mile Island (1979), Chernobyl (1986), and Fukushima (2011)."

# Plot
ggplot(nuclear_top, aes(x = year, y = nuclear_electricity, color = country)) +
  geom_line(size = 1.5) +
  scale_color_manual(values = neon_colors) +
  # Vertical lines for significant events
  geom_vline(xintercept = 1979, linetype = "dashed", color = "#FF0000", alpha = 0.7) +
  geom_vline(xintercept = 1986, linetype = "dashed", color = "#FF0000", alpha = 0.7) +
  geom_vline(xintercept = 2011, linetype = "dashed", color = "#FF0000", alpha = 0.7) +
  # Adjusted text annotations
  annotate("text", x = 1979 - 1, y = max_y * 0.9, label = "1979: Three Mile Island", color = "#FFFFFF", angle = 0, hjust = 1, vjust = 0.5, size = 4) +
  annotate("text", x = 1986 - 1, y = max_y * 0.8, label = "1986: Chernobyl", color = "#FFFFFF", angle = 0, hjust = 1, vjust = 0.5, size = 4) +
  annotate("text", x = 2011 - 1, y = max_y * 0.7, label = "2011: Fukushima", color = "#FFFFFF", angle = 0, hjust = 1, vjust = 0.5, size = 4) +
  labs(
    title = "Global Trends in Nuclear Energy Production",
    subtitle = subtitle_text,
    x = "Year",
    y = "Nuclear Electricity Generation (TWh)",
    color = "Country",
    caption = "Created by Daniel Harrod\nData Source: Our World in Data (2023)"
  ) +
  theme_minimal() +
  theme(
    plot.background      = element_rect(fill = "#000000"),
    panel.background     = element_rect(fill = "#000000"),
    legend.background    = element_rect(fill = "#000000"),
    legend.key           = element_rect(fill = "#000000"),
    text                 = element_text(color = "#FFFFFF"),
    axis.text            = element_text(color = "#FFFFFF"),
    axis.title           = element_text(color = "#FFFFFF"),
    plot.title           = element_text(size = 22, face = "bold", hjust = 0.5, color = "#39FF14"),
    plot.subtitle        = element_text(size = 10, hjust = 0.5, color = "#FFFFFF", margin = margin(b = 10)),
    plot.caption         = element_text(size = 10, hjust = 0.5, color = "#CCCCCC", margin = margin(t = 15)),
    legend.title         = element_text(color = "#FFFFFF"),
    legend.text          = element_text(color = "#FFFFFF"),
    panel.grid           = element_line(color = "#333333"),
    plot.margin          = margin(t = 20, r = 20, b = 20, l = 40)
  ) +
  scale_x_continuous(breaks = scales::pretty_breaks(n = 10), expand = c(0.02, 0), limits = c(1965, 2022)) +
  scale_y_continuous(labels = scales::comma, expand = c(0, 0))

# Save the plot
ggsave("nuclear_energy_trends_final.png", width = 12, height = 8, dpi = 300)
Citation

Our World in Data. (2023). Energy Data [GitHub repository]. Retrieved from https://github.com/owid/energy-data

