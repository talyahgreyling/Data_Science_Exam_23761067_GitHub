# GOAL: Create a barplot of the distribution of genres on Netflix

draw_genre_distribution <- function(df) {

  ggplot(df, aes(x = main_genre, y = count)) +
    geom_col(fill = "#a60c28") +
    theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
    theme() +
    labs(x = "Main Genre", y = "Number of Movies", title = "Distribution of Genres on Netflix")
}