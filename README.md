# PURPOSE:

This readme is located in my repository for the Data Science Methods for
Economics and Finance 871 Exam. The repository contains all of my code,
figures, tables, and write-ups for the exam. There are a total of 5
questions & each question has its own folder with an accompanying
Readme, code and data folder.

# SETUP CREATION:

``` r
#The '23761067' project was created by copying the file path for my repository file (C:/Users/Talyah Greyling/Documents/1) Meesters/1) Data Science 871/Data_Science_Exam_23761067_GitHub) and then using fmxdat::make_project(ProjNam = "23761067"). 

#This code was used to create the question folders: 
location <- "C:/Users/Talyah Greyling/Documents/1) Meesters/1) Data Science 871/Data_Science_Exam_23761067_GitHub"
Texevier::create_template(directory = location, template_name = "Question1")
Texevier::create_template(directory = location, template_name = "Question2")
Texevier::create_template(directory = location, template_name = "Question3")
Texevier::create_template(directory = location, template_name = "Question4")
Texevier::create_template(directory = location, template_name = "Question5")
```

# DATA STORAGE:

I unzipped the data folder provided (datsci.nfkatzke.com/PracData25.zip)
and put each data file in its respective question folder’s corresponding
data file. I then added ’\*data/’ to my gitignore to prevent the data
folders from committing to GitHub.

# CODE USED FOR FIGURES AND TABLES:

``` r
# Basic setup: 
rm(list = ls()) # clean environment
gc() # garbage collection 
```

    ##           used (Mb) gc trigger (Mb) max used (Mb)
    ## Ncells  555965 29.7    1237447 66.1   702048 37.5
    ## Vcells 1055074  8.1    8388608 64.0  1927558 14.8

``` r
library(pacman)
p_load(tidyverse, lubridate)

# Source in all functions: 
list.files('Question1/code/', full.names = T, recursive = T) %>% .[grepl('.R', .)] %>% as.list() %>% walk(~source(.))
list.files('Question2/code/', full.names = T, recursive = T) %>% .[grepl('.R', .)] %>% as.list() %>% walk(~source(.))
list.files('Question3/code/', full.names = T, recursive = T) %>% .[grepl('.R', .)] %>% as.list() %>% walk(~source(.))
list.files('Question4/code/', full.names = T, recursive = T) %>% .[grepl('.R', .)] %>% as.list() %>% walk(~source(.))
list.files('Question5/code/', full.names = T, recursive = T) %>% .[grepl('.R', .)] %>% as.list() %>% walk(~source(.))
```

## QUESTION 1:

### Loading the data

### Plot number 1
