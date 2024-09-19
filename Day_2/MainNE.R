# load the packages 
library(tidyverse)
library(scales)
library(ggthemes)

# read the data
energy_data <- read.csv("/Users/danielharrod/Desktop/30_Day_Chart_Challenge/Day_2/owid-energy-data.csv")
# Define the countries you want to include
countries_to_include <- c("United States", "France", "South Korea", "Russia", "Germany")

# Filter the data for these countries
nuclear_top <- nuclear_data %>%
  filter(country %in% countries_to_include)

# Define neon colors for the countries
neon_colors <- c(
  "United States" = "#39FF14",  # Neon Green
  "France" = "#FF073A",         # Neon Red
  "China" = "#FDFE02",          # Neon Yellow
  "Russia" = "#0FF0FC",         # Neon Cyan
  "South Korea" = "#FF6EC7"     # Neon Pink
)

# Plot the data
ggplot(nuclear_top, aes(x = year, y = nuclear_electricity, color = country)) +
  geom_line(size = 1.5) +
  scale_color_manual(values = neon_colors) +
  # Adding annotations for significant events (optional)
  geom_vline(xintercept = 1979, linetype = "dashed", color = "#FF0000", alpha = 0.7) +
  geom_vline(xintercept = 1986, linetype = "dashed", color = "#FF0000", alpha = 0.7) +
  geom_vline(xintercept = 2011, linetype = "dashed", color = "#FF0000", alpha = 0.7) +
  annotate("text", x = 1979, y = max(nuclear_top$nuclear_electricity) * 0.9, label = "1979: Three Mile Island", color = "#FFFFFF", angle = 90, vjust = 0.5, hjust = 1) +
  annotate("text", x = 1986, y = max(nuclear_top$nuclear_electricity) * 0.9, label = "1986: Chernobyl", color = "#FFFFFF", angle = 90, vjust = 0.5, hjust = 1) +
  annotate("text", x = 2011, y = max(nuclear_top$nuclear_electricity) * 0.9, label = "2011: Fukushima", color = "#FFFFFF", angle = 90, vjust = 0.5, hjust = 1) +
  labs(
    title = "Global Trends in Nuclear Energy Production",
    subtitle = "This chart illustrates how nuclear energy production has evolved in the top five countries from 1965 to 2020,\n highlighting the impact of major nuclear incidents such as Three Mile Island (1979), Chernobyl (1986), and Fukushima (2011).",
    x = "Year",
    y = "Nuclear Electricity Generation (TWh)",
    color = "Country",
    caption = "Created By Daniel Harrod\n Data Source: Our World in Data. (2023). Energy Data [GitHub repository]. Retrieved from https://github.com/owid/energy-data"
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
    panel.grid           = element_line(color = "#333333")
  ) +
  scale_x_continuous(breaks = scales::pretty_breaks(n = 10)) +
  scale_y_continuous(labels = scales::comma)


