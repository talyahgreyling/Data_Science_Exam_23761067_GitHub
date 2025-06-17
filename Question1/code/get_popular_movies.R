# GOAL: Create a database of core characters in popular movies

get_popular_movies <- function(df1, df2) {

    popular_movies <- left_join(df1, df2, by = "id") %>% # create single data frame
        select(name, character, release_year, tmdb_score) %>% # select useful columns
        filter(tmdb_score > mean(Movies$tmdb_score, na.rm = TRUE)) %>% # filter out unpopular movies
        filter(!grepl("\\(uncredited\\)", character)) # filter out characters that are not core characters

    popular_movies

}