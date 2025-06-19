# GOAL: Generate genre distribution by counting occurences in Netflix data 
counts_genre <- function(df){
  
  genre_distribution <- df %>%
    group_by(main_genre) %>%
    summarise(count = n()) %>%
    arrange(desc(count)) %>%
    filter(main_genre != "")
}