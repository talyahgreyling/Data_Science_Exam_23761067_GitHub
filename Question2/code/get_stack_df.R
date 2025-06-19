# GOAL: Get summary statistics in long format that can plot in stacked bar graph for both Coldplay and Metallica 
get_stack_df <- function(df){
  
  df_stack <- df %>% 
    group_by(band, month_year) %>%
    summarise(
      ave_popularity = mean(popularity, na.rm = TRUE),
      ave_energy = mean(energy, na.rm = TRUE),
      ave_danceability = mean(danceability, na.rm = TRUE),
      ave_acousticness = mean(acousticness, na.rm = TRUE),
      ave_tempo = mean(tempo, na.rm = TRUE)
    ) %>%
    pivot_longer(
      cols = starts_with("ave"),
      names_to = "category",
      values_to = "value"
    )
}