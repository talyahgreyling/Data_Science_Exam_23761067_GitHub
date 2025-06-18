#GOAL: count the amount of new billionaires per decade in the US
  counts_new_us <- function(df){
  df_us_billions <- df %>%
    filter(grepl("USA", location.country.code, ignore.case = TRUE)) %>%
    mutate(new_status = if_else(
      str_detect(
        wealth.how.inherited,
        regex("not inherited", ignore_case = TRUE)
      ),
      true = "new",
      false = "inherited"
    )) %>%
    group_by(year, new_status) %>%
    summarise(count = n()) %>%
    mutate(status = "US")
}