# GOAL: Convert Metallica duration to seconds 
convert_duration <- function(duration_ms, duration) {
  if (!is.na(duration_ms) & is.na(duration)) { # identify Metallica rows 
    duration <- duration_ms / 1000 # convert to seconds
  }
  return(duration)
}