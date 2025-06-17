# GOAL: Apply correlation analysis to all years

name_persistence <- function(top_names, future_years = 3) {

    # Get all unique years
    years <- sort(unique(top_names$Year))

    # Ensure data range is not exceeded
    max_valid_year <- max(years) - future_years

    # Calculate correlations
    map_dfr(years[years <= max_valid_year], ~ {
        calculate_correlations(
            top_names = top_names,
            target_year = .x,
            future_years = future_years
        ) %>%
            mutate(Target_Year = .x)  # Add reference year column
    }) %>%
        # Reorder columns for clarity
        select(Target_Year, everything())
}