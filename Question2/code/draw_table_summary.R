# GOAL: Create a table containing basic summary stats for both Coldplay and Metallica
draw_table_summary <- function(df){
  
  table_summary <- df %>%
    filter(band %in% c("Metallica", "Coldplay")) %>%
    group_by("Band" = band) %>%
    summarise(
      "Average Popularity" = mean(popularity),
      "SD: Energy" = sd(energy),
      "SD: Danceability" = sd(danceability),
      "SD: Acousticness" = sd(acousticness),
      "SD: Tempo" = sd(tempo)
    ) %>%
    gt() %>%
    tab_header(title = "Table 1: Basic Summary Statistics for Coldplay and Metallica Albums",
               subtitle = "(SD = Standard Deviation)")
}