plot_top_10 <- function(data, focus_col, choose_colour, x_label, y_label, title_label){

data %>% ggplot(aes(x = focus_col, y = ave_score)) +
    geom_bar(stat = "identity", fill = choose_colour) +
    theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
    theme +
    labs(x = x_label, y = y_label, title = title_label)
}