
# Forest Coverage in U.S. Regions - 30-Day Chart Challenge (Day 1: Part-to-Whole)

This repository contains the code and output for the **Forest Coverage in U.S. Regions** visualization, created as part of the **30-Day Chart Challenge** for Day 1, which focuses on "Part-to-Whole" charts.

## Overview

The goal of this visualization is to display the distribution of forested land across different U.S. regions using a circular bar chart. The chart shows the proportion of forest coverage in each region based on 2016 data.

### Key Regions:
- U.S. Territories
- Southern Region
- Pacific Northwest Region
- Northern Region
- Interior West Region

### Key Takeaways:
- The **U.S. Territories** and **Southern Region** exhibit the highest percentages of forest coverage.
- The **Interior West Region** has the lowest percentage of forested land.

## Visualization

### Circular Bar Chart

The circular bar chart presents each region’s forest coverage as a part of the whole, using a natural, forest-like color palette for visual clarity. The regions are arranged in a circular format to provide an easy comparison of forest coverage between regions.

![Forest Coverage in U.S. Regions](./path_to_your_plot_image.png)

## Data Source

The data used in this visualization comes from the **Forest Inventory and Analysis Fiscal Year 2016 Business Report** published by the United States Department of Agriculture. You can find the full report [here](https://www.fs.usda.gov/sites/default/files/fs_media/fs_document/publication-15817-usda-forest-service-fia-annual-report-508.pdf).

## Instructions for Reproducing the Visualization

1. **Install Required Packages:**
   Ensure that you have the following R packages installed:

   ```r
   install.packages(c("ggplot2", "dplyr", "extrafont"))
   ```

2. **Font Installation:**
   If you wish to use the **Bell MT** font or an alternative, follow the instructions for installing and importing system fonts into R using the `extrafont` package.

3. **Run the R Script:**
   To generate the visualization, run the provided R script (`forest_coverage_viz.R`). The script processes the data and outputs the circular bar chart using `ggplot2`.

4. **Data:**
   The data is processed from a CSV file that contains forest coverage percentages for U.S. regions. The data file is named `US_Forest_Coverage_by_Region.csv` and should be in the same directory as the script.

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for more details.

## Author

Data visualization created by **Daniel Harrod** as part of the 30-Day Chart Challenge.
