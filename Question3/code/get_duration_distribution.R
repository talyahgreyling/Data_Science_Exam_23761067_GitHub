# GOAL: Generate distribution of duration by summing occurrences in Netflix data in bins of 10 minutes

get_duration_distribution <- function(df) {
  duration_distribution <- df %>%
    group_by(minutes) %>%
    summarise(count = n()) %>%
    arrange(desc(count)) %>%
    filter(!is.na(minutes)) %>%
    mutate(minute_bin = floor(as.numeric(minutes) / 10) * 10) %>%
    group_by(minute_bin) %>%
    summarise(total_count = sum(count)) %>%
    arrange(minute_bin)
}