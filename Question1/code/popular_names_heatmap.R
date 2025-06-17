# GOAL: Create a heatmap plot to display distributions for some popular names
popular_names_heatmap <- function(decadal_df) {
    decadal_df %>%
        mutate(Decade_Label = paste0(Decade, "s")) %>%
        ggplot(aes(x = reorder(Decade_Label, Decade),
                   y = reorder(Name, -Rank),
                   fill = Rank)) +
        geom_tile(color = "white", linewidth = 0.5) +
        scale_fill_viridis_c(option = "magma", direction = -1) +
        facet_wrap(~ Gender, scales = "free_y") +
        labs(
            title = "Name Popularity Rankings by Decade",
            x = "Decade",
            y = "Name",
            fill = "Rank\n(1=Best)"
        ) +
        theme_minimal(base_size = 12) +
        theme(
            axis.text.x = element_text(angle = 45, hjust = 1),
            panel.grid = element_blank()
        )
}