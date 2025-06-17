# GOAL: Add column for main genre (assume first genre listed)  
identify_main_genre = function(df,og_genre_col) {
  df <- df %>% 
    mutate(main_genre = sub(",.*", "", genres)) %>% 
    mutate(main_genre = gsub("\\[|\\]|'", "", main_genre))
  
  df 
}