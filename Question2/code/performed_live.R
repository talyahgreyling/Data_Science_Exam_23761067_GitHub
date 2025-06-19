# GOAL: Indicate if song was performed live 

performed_live <- function(col_name) {
  
  return(str_detect(col_name, regex("Live", ignore_case = TRUE)))
  
}