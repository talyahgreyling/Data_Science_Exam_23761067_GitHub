# GOAL: Create custom theme & colour palette for plot consistency 
set_custom_theme <- function(base_family = "arial",
                             title_size = 16,
                             axis_title_size = 12,
                             legend_position = "right") {
  custom_theme <- theme(
    # Text elements
    text = element_text(family = base_family), 
    plot.title = element_text(size = title_size, family = base_family, face = "bold"),
    plot.subtitle = element_text(size = title_size - 2, family = base_family),
    plot.caption = element_text(size = axis_title_size - 2, family = base_family, hjust = 0),
    
    # Axes
    axis.title.x = element_text(size = axis_title_size,family = base_family, hjust = 0.5, vjust = -2, face = "bold"),
    axis.title.y = element_text(size = axis_title_size,family = base_family, hjust = 0.5, vjust = 3, face = "bold"),
    axis.text.x = element_text(size = axis_title_size - 2, family = base_family),
    axis.text.y = element_text(size = axis_title_size - 2, family = base_family),
    axis.ticks = element_blank(),
    
    # Background and grids
    panel.background = element_blank(),
    plot.background = element_rect(fill = "white", color = "white"),
    panel.grid.major = element_line(color = "gray", linewidth = 0.1),
    panel.grid.minor = element_line(color = "gray", linewidth = 0.1),
    
    # Margins and spacing 
    plot.margin = unit(c(0.5, 0.5, 0.5, 0.5), "cm"),
    
    # Legend
    legend.position = legend_position,
    legend.text = element_text(size = axis_title_size, family = base_family),
    legend.title = element_text(size = axis_title_size, family = base_family, hjust = 3, face = "bold"),
    legend.key = element_blank(),
  
    # Facets
    strip.text = element_text(size = axis_title_size, family = base_family, hjust = 0.5, vjust = 1, face = "bold"),
    strip.background = element_blank(),
  )
}