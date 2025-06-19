# GOAL: Take 2 datasets as inputs and merge them 

merge_datasets <-  function(df1, df2){
  
  df_metallica <- df1 %>% 
    mutate(band = "Metallica")
  
  df_coldplay <- df2 %>% 
    mutate(band = "Coldplay")
  
  df_metcol <- bind_rows(df_metallica, df_coldplay) %>% 
    mutate(album = coalesce(album, album_name)) %>% 
    mutate(duration = map2(duration_ms, duration, convert_duration)) #get all durations in seconds
}