writeCountryFiles  = function(country_df) {
  # Change country name to lower case and replace spaces with underscores(_)
  country_name <- str_replace(str_to_lower(as.character(country_df$country[1])), " ", "_")
  write.csv(country_df,paste0("data/country_line_lists/line_list_",country_name,".csv"))
  return(country_df)
}