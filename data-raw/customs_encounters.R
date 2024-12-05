## code to prepare `customs_encounters` dataset goes here

requireNamespace("readr", quietly = TRUE)


cbp_resp <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2024/2024-11-26/cbp_resp.csv")
cbp_state <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2024/2024-11-26/cbp_state.csv")

# Original data is from TT (https://github.com/rfordatascience/tidytuesday/blob/main/data/2024/2024-11-26/readme.md)

usethis::use_data(cbp_resp, overwrite = TRUE)
usethis::use_data(cbp_state, overwrite = TRUE)
