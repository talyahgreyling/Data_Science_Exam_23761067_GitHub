top_n_names_per_decade <- function(df, top_n = 10) {

    df %>%
        # Create decade column (1910, 1920, etc.)
        mutate(Decade = floor(Year / 10) * 10) %>%

        # Calculate decade totals for each name
        group_by(Decade, Gender, Name) %>%
        summarise(Total_Dec_Count = sum(Total_Count), .groups = "drop") %>%

        # Rank names within each decade and gender
        group_by(Decade, Gender) %>%
        arrange(desc(Total_Dec_Count)) %>%
        mutate(Rank = row_number()) %>%

        # Filter to top 10 per group
        filter(Rank <= top_n) %>%

        # Clean up column order
        select(Decade, Name, Gender, Total_Dec_Count, Rank) %>%
        ungroup()
}