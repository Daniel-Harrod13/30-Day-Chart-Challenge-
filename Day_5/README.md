# Divergence in Cranial Capacity of Hominid Species

This project is part of the **30-Day Chart Challenge**, focusing on **Day 5 - Diverging**. The goal of this visualization is to explore and highlight how various hominid species deviate from the average cranial capacity, showing how species evolved over time with differing cranial structures.

## Project Overview

This project uses a diverging bar chart to represent the cranial capacity differences among various hominid species. It provides a clear comparison of species with larger-than-average cranial capacities against those with smaller-than-average capacities.

### Data Source
The dataset used in this visualization contains multiple evolutionary traits of hominid species, including:
- Genus & Species
- Evolutionary Period (`Time`)
- Geographical Distribution (`Current_Country`)
- Various morphological features such as **Cranial Capacity**, **Height**, and **Jaw Shape**.

### Visualization Details
The chart visualizes **Cranial Capacity Deviation** for each species, calculated as the difference between the cranial capacity of a species and the average cranial capacity across all species. Key elements of the chart include:

- **Positive Deviation (Green Bars)**: Indicates species with larger-than-average cranial capacities.
- **Negative Deviation (Orange Bars)**: Indicates species with smaller-than-average cranial capacities.
- Species are sorted and displayed along the y-axis, with clear labels and separation to enhance readability.

### Installation and Setup
To recreate this project, ensure you have the following R packages installed:

```r
# Required R packages
install.packages("ggplot2")
install.packages("dplyr")
install.packages("ggimage")  # Optional, if adding images
