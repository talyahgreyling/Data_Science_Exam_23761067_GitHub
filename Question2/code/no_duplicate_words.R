# GOAL: indicate if any duplicate words are present

no_duplicate_words <- function(col_name) {
  return(!any(str_detect(col_name, regex(paste(duplicate_words, collapse = "|"), ignore_case = TRUE))))
}