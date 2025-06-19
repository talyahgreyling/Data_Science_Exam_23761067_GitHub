# GOAL: Identify main genre in df_titles and store in new column 

add_main_genre <- function(df) {
  
  df_titles <- df %>%
    mutate(main_genre = sub(",.*", "", genres)) %>%
    mutate(main_genre = gsub("\\[|\\]|'", "", main_genre))
}