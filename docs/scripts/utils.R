# utils.R
# Helper functions for analysis
# Author: Chandni
# Date: 2024

#' Calculate summary statistics for a numeric variable by group
#'
#' @param data A data frame
#' @param var The numeric variable to summarize (unquoted)
#' @param group The grouping variable (unquoted)
#' @return A data frame with summary statistics
summarize_by_group <- function(data, var, group) {
  data %>%
    dplyr::group_by({{ group }}) %>%
    dplyr::summarise(
      mean = mean({{ var }}, na.rm = TRUE),
      sd = sd({{ var }}, na.rm = TRUE),
      median = median({{ var }}, na.rm = TRUE),
      min = min({{ var }}, na.rm = TRUE),
      max = max({{ var }}, na.rm = TRUE),
      n = dplyr::n(),
      .groups = "drop"
    )
}

#' Create a formatted table for display
#'
#' @param data A data frame
#' @param digits Number of decimal places
#' @return A kable object
format_table <- function(data, digits = 2) {
  data %>%
    dplyr::mutate(dplyr::across(where(is.numeric), ~ round(.x, digits))) %>%
    knitr::kable()
}

#' Check if required packages are installed
#'
#' @param packages Character vector of package names
#' @return Invisible NULL, prints messages
check_packages <- function(packages) {
  missing <- packages[!sapply(packages, requireNamespace, quietly = TRUE)]
  
  if (length(missing) > 0) {
    message("Missing packages: ", paste(missing, collapse = ", "))
    message("Install with: install.packages(c('", paste(missing, collapse = "', '"), "'))")
  } else {
    message("All required packages are installed!")
  }
  
  invisible(NULL)
}

#' Standard theme for ggplot2 figures
#'
#' @param base_size Base font size
#' @return A ggplot2 theme object
theme_publication <- function(base_size = 12) {
  ggplot2::theme_minimal(base_size = base_size) +
    ggplot2::theme(
      plot.title = ggplot2::element_text(face = "bold", hjust = 0.5),
      legend.position = "bottom",
      panel.grid.minor = ggplot2::element_blank()
    )
}
