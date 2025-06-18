# GOAL: Read in a CSV document with its specific column types 
read_csv_with_col_type <- function(csv_file) {
  
  read_csv(csv_file, col_types = cols(.default = "character", 
                                      rank = "integer", 
                                      year = "integer",
                                      company.founded = "integer",
                                      demographics.age = "integer",
                                      location.gdp = "numeric",
                                      wealth.worth.in.billions = "numeric"))
}