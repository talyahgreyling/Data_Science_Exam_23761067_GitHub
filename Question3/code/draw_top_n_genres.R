# GOAL: Create a barplot of the top 10 genres by average audience score
draw_top_n_genres <- function(df){
  
  ggplot(df, aes(x = main_genre, y = ave_score)) +
    geom_bar(stat = "identity", fill = "#a60c28") +
    theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
    theme +
    labs(x = "Main Genre", y = "Average Audience Score", title = "Top 10 genres by Average Audience Score")
} 