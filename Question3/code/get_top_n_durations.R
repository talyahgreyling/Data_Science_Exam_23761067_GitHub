# GOAL: Calculate top n durations by average audience score

get_top_n_durations <- function(df, n) {
  
  top_10_durations <- df %>%
    group_by(minutes) %>%
    summarise(ave_score = mean(imdb_score, na.rm = TRUE)) %>%
    arrange(desc(ave_score)) %>%
    mutate(minutes = factor(minutes, levels = minutes)) %>% 
    head(n)
} 