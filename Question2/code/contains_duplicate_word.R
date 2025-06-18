# GOAL: indicate if any duplicate words are present 
contains_duplicate_word <- function(col_name) {
  return(any(str_detect(col_name, regex(paste(duplicate_words, collapse = "|"), ignore_case = TRUE))))
}