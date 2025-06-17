# GOAL: Create a database of core characters in popular movies

get_popular_movies <- function(df1, df2) {

    movies_data <- left_join(df1, df2, by = "id") # create single data frame

    ave_score <- mean(movies_data$tmdb_score, na.rm = TRUE) # calculate average TMDB score

    popular_movies <- movies_data %>%
        select(name, character, title, release_year, tmdb_score) %>% # select useful columns
        filter(tmdb_score > ave_score) %>% # filter out unpopular movies
        filter(!grepl("\\(uncredited\\)", character)) %>% # filter out characters that are not core characters
        separate(name, into = c("Name", "Surname"), sep = " ", extra = "merge", remove = FALSE)

    popular_movies

}