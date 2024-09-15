library(dplyr)
library (ggplot2)
library(stringr)
# Set the file path
file_path <- "/Users/danielharrod/Desktop/30_Day_Chart_Challenge/Day 1 /US_Forest_Coverage_by_Region.csv"

# Read the CSV file
forest_data<- read.csv(file_path)

# Print the first few rows of the data
head(forest_data)

# Next we will drop the rank column as it is not needed
forest_data <- forest_data %>% select(-Rank)

# Next we are going to rename the column Percent.forest column to something easier like Forest_Percentage
forest_data <- forest_data %>% rename(Forest_Percentage = Percent.forest..2016.)

head(forest_data)

