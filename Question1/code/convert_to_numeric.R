convert_to_numeric <- function(df, start_col) {
  df %>%
    mutate(across(start_col:ncol(df), ~as.numeric(.)))
}