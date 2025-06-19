# GOAL: Create a barplot of the distribution of durations on Netflix

draw_duration_distribution <- function(df){

  ggplot(df, aes(x = minute_bin, y = total_count)) +
    geom_col(fill = "#0b2585") +
    theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
    theme() +
    labs(x = "Duration (in minutes)", y = "Number of Movies", title = "Distribution of durations on Netflix")
}