#GOAL: Calculate Spearman correlation between a year and its future years

calculate_correlations <- function(top_names, target_year, future_years = 3) {

    # Get target year's top names
    target_data <- top_names %>%
        filter(Year == target_year) %>%
        select(Name, Gender, Target_Rank = Rank)

    # Calculate correlations for each future year
    map_dfr(1:future_years, ~ {
        future_year <- target_year + .x

        # Get future year's rankings
        top_names %>%
            filter(Year == future_year) %>%
            select(Name, Gender, Future_Rank = Rank) %>%

            # Join with target year rankings
            inner_join(target_data, by = c("Name", "Gender")) %>%

            # Compute Spearman correlation by gender
            group_by(Gender) %>%
            summarise(
                Year_Pair = paste(target_year, future_year, sep = "-"),
                Spearman_Cor = cor(Target_Rank, Future_Rank,
                                   method = "spearman",
                                   use = "complete.obs"),
                Obs_Pairs = n(),  # Count name matches between years
                .groups = "drop"
            ) %>%

            # Only keep valid correlations
            filter(Obs_Pairs >= 10)  # Minimum 10 overlapping names required
    })
}