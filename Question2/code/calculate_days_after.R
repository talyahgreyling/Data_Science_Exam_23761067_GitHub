# GOAL: Calculate days since first album release 
calculate_days_after <- function(df) {
  
  df <- df %>%
    group_by(band) %>%
    mutate(days_after = as.integer(release_date - min(release_date)))
  
} 