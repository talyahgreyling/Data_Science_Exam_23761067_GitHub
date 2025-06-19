# GOAL: Create a table of summary statistics for the best performing albums for both Coldplay and Metallica

draw_best_albums_table <- function(df){
  
  table_best_albums <- df %>%
    filter(band %in% c("Coldplay", "Metallica")) %>%
    group_by(band, "Album" = album, "Release Date" = release_date) %>%
    summarise(
      Popularity = mean(popularity),
      Danceability = mean(danceability),
      Acousticness = mean(acousticness)
    ) %>%
    arrange(band, desc(Popularity)) %>%
    group_by(band) %>%
    top_n(3) %>% 
    gt() %>%
    tab_header(title = "Table 2: Best performing albums for Coldplay and Metallica")
}