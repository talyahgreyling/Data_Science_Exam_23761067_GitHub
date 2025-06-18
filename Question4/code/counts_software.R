#GOAL: count the amount of new billionaires through software companies per decade

counts_software <- function(df, software_words){

    df_software_billions <- df %>%
        mutate(sector_status = if_else(
            str_detect(company.sector, regex(
                paste(software_words, collapse = "|"), ignore_case = TRUE
            )),
            true = "software",
            false = "consumer"
        )) %>%
        filter(!is.na(sector_status))  %>%
        mutate(new_status = if_else(
            str_detect(
                wealth.how.inherited,
                regex("not inherited", ignore_case = TRUE)
            ),
            true = "new",
            false = "inherited"
        )) %>%
        filter(new_status == "new") %>%
        group_by(year, sector_status) %>%
        summarise(count = n()) %>%
        pivot_wider(names_from = sector_status, values_from = count) %>%
        arrange(year)
}