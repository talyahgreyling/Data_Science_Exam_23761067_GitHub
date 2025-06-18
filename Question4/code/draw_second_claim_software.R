# GOAL: Creates a Lollipop plot of the amount of new billionaires through software vs. consumer services (per decade)

draw_second_claim_software <- function(df) {
  ggplot(df) +
    geom_segment(aes(
      x = year,
      xend = year,
      y = consumer,
      yend = software
    ),
    color = "grey") +
    geom_point(aes(x = year, y = consumer),
               color = rgb(0.2, 0.7, 0.1, 0.5),
               size = 3) +
    geom_point(aes(x = year, y = software),
               color = rgb(0.7, 0.2, 0.1, 0.5),
               size = 3) +
    coord_flip() +
    theme_ipsum() +
    theme(legend.position = "right") +
    labs(title = "Amount of New Billionaires Through Software vs Consumer Services (Per Decade)", x = "Years", y = "Billionaire Counts")
}