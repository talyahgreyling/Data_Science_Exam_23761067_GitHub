# GOAL: Creates a grouped barchart of the counts of new vs. inherited wealth per decade
draw_first_claim <- function(df, input_title) {
  ggplot(df, aes(fill = new_status, y = count, x = year)) +
    geom_bar(position="dodge", stat="identity") +
    labs(title = input_title) +
    theme()
}