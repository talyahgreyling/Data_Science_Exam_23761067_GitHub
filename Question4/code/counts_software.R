#GOAL: count the amount of new billionaires through software companies per decade

counts_software <- function(df, software_words){
  
  df_software_billions <- df %>%
    mutate(sector_status = if_else(str_detect(
      company.sector, regex(paste(software_words, collapse = "|"), ignore_case = TRUE)
    ), true = "software",
    false = "consumer"
    )) %>%
    filter(!is.na(sector_status))  %>% 
    group_by(year, sector_status) %>%
    summarise(count = n()) %>%
    mutate(status = "US")
  
}