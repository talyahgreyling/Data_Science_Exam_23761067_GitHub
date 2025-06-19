#GOAL: Create stacked bar graph of summary statistics for both Coldplay and Metallica
draw_stack <- function(df){

  stack_plot <- df %>%
    filter(month_year > as.Date("1995-01-01")) %>%
    ggplot(aes(x = month_year, y = value, fill = band)) +
    geom_area(position = "stack", alpha = 0.8) +
    facet_wrap(~ category, scales = "free_y", ncol = 1) +
    scale_fill_brewer(palette = "Dark2") +
    theme() +
    theme(legend.position = "bottom") +
    labs(title = "Figure 1: Stacked Bar Graph of Band Characteristics Over time", x = "", y = "Count", fill = "")

}