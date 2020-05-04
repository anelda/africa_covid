writeCountryFiles  = function(country_df) {
  # Change country name to lower case and replace spaces with underscores(_)
  country_name <- str_replace_all(str_to_lower(as.character(country_df$country[1])), " ", "-")
  country_name <- str_replace(country_name, "'", "")
  write.csv(country_df,paste0("data/country_line_lists/line-list-",country_name,".csv"))
  return(country_df)
}

