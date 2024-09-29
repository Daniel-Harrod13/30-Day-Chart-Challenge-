# Day 3: Makeover - 30 Day Chart Challenge

## Project Overview
This project is part of the 30-Day Chart Challenge, focusing on transforming a previous visualization into a cleaner, more informative version. The theme for **Day 3** is **"Makeover"**, where we revisit a past project to improve aesthetics, clarity, and overall storytelling.

## Objective
The goal of this challenge is to enhance a previous visualization of the **ESG (Environmental, Social, and Governance) Risk Scores** for S&P 500 companies. The original chart was created using Python and has been reworked to better communicate the insights using advanced styling, annotations, and visual elements.

## Dataset
- **Data Source**: ESG Risk Assessment Data for S&P 500 Companies.
- The dataset includes columns for:
  - `Total ESG Risk score`
  - `Environment Risk Score`
  - `Governance Risk Score`
  - `Social Risk Score`

## Key Features of the Visualization
- **Combined Distribution**: KDE plots for `Total ESG Risk`, `Environmental Risk`, `Governance Risk`, and `Social Risk` scores.
- **Annotations**: Peak values are marked with labels and arrows for easy identification of the most common scores in each category.
- **Professional Styling**: Improved color scheme, captions, and annotations.

## Improvements Made
1. **Annotations for Key Data Points**:
   - Added dynamic annotations highlighting peak risk scores for `Total ESG Risk` and `Environmental Risk`.
   - Used arrows to point directly to KDE peaks, enhancing visual guidance.

2. **Enhanced Title and Subtitle**:
   - Included a descriptive title and subtitle to better explain the purpose of the visualization.
   - Added a source caption to give context to the data.

3. **Legend and Color Scheme**:
   - Updated the legend placement and styling for clarity.
   - Implemented a custom color palette to distinguish the ESG components more effectively.

## Code Implementation
The enhanced visualization was created using **Python** libraries: `matplotlib`, `seaborn`, and `numpy`. The code snippet below showcases the key enhancements made to the original plot:

```python
# Import required libraries
import seaborn as sns
import matplotlib.pyplot as plt
import numpy as np

# Generate KDE plots and add annotations for peak points
# Code snippet for Day 3 visualization...
