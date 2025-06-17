Rds_Data_Collating <- function(Datroot){

    library(tidyverse)

    # Create a silent read function (avoid unnecessary prints with read_rds):
    silentread <- function(x){
        hushread <- purrr::quietly(read_rds)    #suppress messages & warnings
        df <- hushread(x)   # quietly read file
        df$result       #return data without messages
    }

    datcolat <-
        list.files(Datroot, full.names = T, recursive = T) %>%  # list all files recursively
        .[!grepl(".txt", .)] %>%    # exclude .txt files
        as.list() %>%
        map(~silentread(.)) %>%      # read each Rds silently
        bind_rows()    # combine into 1 dataframe

    datcolat

}