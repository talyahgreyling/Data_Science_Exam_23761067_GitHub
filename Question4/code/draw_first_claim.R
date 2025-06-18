draw_first_claim <- function(df, input_title) {
  ggplot(df, aes(fill = new_status, y = count, x = year)) + 
    geom_bar(position="dodge", stat="identity") + 
    labs(title = imput_title) +
    theme()
}