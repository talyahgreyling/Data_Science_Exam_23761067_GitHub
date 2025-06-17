# GOAL: Identify main genre (assume first genre listed)  
identify_main_genre = function(df) {
  df_titles <- df_titles %>% 
  mutate(main_genre = sub(",.*", "", genres)) %>% 
  mutate(main_genre = gsub("\\[|\\]|'", "", main_genre))
}