# analysis.R
# Main analysis script for Chandniverse website
# Author: Chandni
# Date: 2024

# Load required packages
library(ggplot2)
library(plotly)
library(dplyr)

# Load data
data <- read.csv("data/mtcars.csv")

# Basic summary statistics
summary_stats <- data %>%
  group_by(cyl) %>%
  summarise(
    mean_mpg = mean(mpg),
    sd_mpg = sd(mpg),
    mean_wt = mean(wt),
    n = n()
  )

print(summary_stats)

# Create scatter plot
p1 <- ggplot(data, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point(size = 3, alpha = 0.7) +
  geom_smooth(method = "lm", se = FALSE, linetype = "dashed") +
  scale_color_brewer(palette = "Set1") +
  labs(
    title = "Weight vs MPG by Cylinder Count",
    x = "Weight (1000 lbs)",
    y = "Miles per Gallon",
    color = "Cylinders"
  ) +
  theme_minimal()

# Make interactive
p1_interactive <- ggplotly(p1)

# Save static plot
ggsave("figures/scatter_plot.png", p1, width = 8, height = 6, dpi = 300)

# Print completion message
cat("Analysis complete!\n")
