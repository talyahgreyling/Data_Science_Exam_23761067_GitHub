# GOAL: Create a bar plot of the top 10 durations by average audience score on IMDB

draw_top_n_durations<- function(df){

  ggplot(df, aes(x = minutes, y = ave_score)) +
    geom_bar(stat = "identity", fill = "#0b2585") +
    theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
    theme() +
    labs(x = "Duration (in minutes)", y = "Average Audience Score", title = "Top 10 durations by Average Audience Score")
}