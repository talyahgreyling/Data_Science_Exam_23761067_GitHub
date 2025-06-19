# GOAL: Calculate top n genres by average audience score on IMDB
get_top_n_genres <- function(df, n) {

  top_10_genres <- df %>%
    group_by(main_genre) %>%
    summarise(ave_score = mean(imdb_score, na.rm = TRUE)) %>%
    arrange(desc(ave_score)) %>%
    filter(main_genre != "") %>%
    mutate(main_genre = factor(main_genre, levels = main_genre)) %>%
    head(n)
}