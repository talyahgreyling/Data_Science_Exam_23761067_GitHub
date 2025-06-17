# Goal: Filter top 25 names per year & gender combination:

top_n_names <- function(df, n = 25) {

    df %>%
        # Aggregate counts across all states for each name-year-gender combo
        group_by(Year, Gender, Name) %>%
        summarise(Total_Count = sum(Count), .groups = "drop") %>%

        # Rank names nationally (across all states) within each year-gender group
        group_by(Year, Gender) %>%
        arrange(desc(Total_Count)) %>%
        slice_head(n = n) %>%

        # Add rank column
        mutate(Rank = row_number()) %>%
        ungroup()

    }