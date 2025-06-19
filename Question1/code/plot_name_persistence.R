# GOAL: Create a smooth line graph of the persistence of national top 25 baby names (1910-2014) using the Spearman rank correlation between base year and subsequent years

plot_name_persistence <- function(corr_results,
                                  gender_colors = c("M" = "#4eaff5", "F" = "#f567d8"),
                                  smooth_span = 0.2) {
    # Ensure gender is properly formatted as factor
    plot_data <- corr_results %>%
        mutate(
            Gender = factor(Gender, levels = c("M", "F")),
            Future_Year = as.numeric(str_extract(Year_Pair, "\\d+$"))
        )

    # Create plot
    p <- ggplot(plot_data, aes(x = Target_Year, y = Spearman_Cor,
                   color = Gender, group = interaction(Gender, Future_Year - Target_Year))) +

        # Raw data points
        geom_point(alpha = 0.15, size = 1.5) +

        # Smooth trends for each lag period
        geom_smooth(aes(linetype = as.factor(Future_Year - Target_Year)),
                    method = "loess", span = smooth_span, se = FALSE) +

        # Reference line at 0.5 (moderate persistence)
        geom_hline(yintercept = 0.5, linetype = "dashed", color = "gray50") +

        # Aesthetics
        scale_color_manual(values = gender_colors,
                           labels = c("M" = "Boys' Names", "F" = "Girls' Names")) +
        scale_linetype_discrete(name = "Years Ahead") +
        theme_bw(base_size = 12) +
        theme(
            legend.position = "bottom",
            panel.grid.minor = element_blank(),
            plot.caption = element_text(hjust = 0)
        ) +
        labs(
            title = "Persistence of National Top 25 Baby Names (1910-2014)",
            subtitle = "Spearman rank correlation between base year and subsequent years",
            x = "Base Year",
            y = "Rank Correlation Coefficient",
            caption = paste("Note: Correlations computed between each year's top 25 names and names in",
                            "subsequent years. Only includes names appearing in both years' rankings.")
        )

    # Add faceting if analyzing multiple future years
    if (length(unique(corr_results$Future_Year - corr_results$Target_Year)) > 1) {
        p <- p + facet_wrap(~Gender)
    }

    return(p)
}








