# figures.R
# Script for generating publication-quality figures
# Author: Chandni
# Date: 2024

# Load required packages
library(ggplot2)
library(dplyr)

# Set theme for all plots
theme_set(theme_minimal(base_size = 12))

# Load data
data <- read.csv("data/mtcars.csv")

# Figure 1: Scatter plot
fig1 <- ggplot(data, aes(x = wt, y = mpg, color = factor(cyl))) +
  geom_point(size = 3, alpha = 0.7) +
  scale_color_brewer(palette = "Set1", name = "Cylinders") +
  labs(
    x = "Weight (1000 lbs)",
    y = "Miles per Gallon"
  ) +
  theme(legend.position = "bottom")

# Figure 2: Box plot
fig2 <- ggplot(data, aes(x = factor(cyl), y = mpg, fill = factor(cyl))) +
  geom_boxplot(alpha = 0.7) +
  geom_jitter(width = 0.2, alpha = 0.5) +
  scale_fill_brewer(palette = "Pastel1") +
  labs(
    x = "Number of Cylinders",
    y = "Miles per Gallon"
  ) +
  theme(legend.position = "none")

# Figure 3: Histogram
fig3 <- ggplot(data, aes(x = mpg, fill = factor(cyl))) +
  geom_histogram(binwidth = 2, alpha = 0.7, position = "identity") +
  scale_fill_brewer(palette = "Set2", name = "Cylinders") +
  labs(
    x = "Miles per Gallon",
    y = "Count"
  ) +
  theme(legend.position = "bottom")

# Create figures directory if it doesn't exist
if (!dir.exists("figures")) {
  dir.create("figures")
}

# Save figures
ggsave("figures/fig1_scatter.png", fig1, width = 8, height = 6, dpi = 300)
ggsave("figures/fig2_boxplot.png", fig2, width = 6, height = 6, dpi = 300)
ggsave("figures/fig3_histogram.png", fig3, width = 8, height = 6, dpi = 300)

cat("All figures saved to figures/ directory\n")
