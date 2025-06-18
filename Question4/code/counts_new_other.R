#GOAL: count the amount of new billionaires per decade in all other countries
counts_new_other <- function(df){

  df_other_billions <- df %>%
    filter(!grepl("USA", location.country.code, ignore.case = TRUE)) %>%
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
    mutate(status = "other")
}