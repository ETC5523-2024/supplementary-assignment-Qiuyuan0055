## code to prepare `customs_encounters` dataset goes here
#Load the readr package for data reading
requireNamespace("readr", quietly = TRUE)

#Read the CBP response data
cbp_resp <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2024/2024-11-26/cbp_resp.csv")
#Read the CBP state data
cbp_state <- readr::read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2024/2024-11-26/cbp_state.csv")

# Original data is from TT (https://github.com/rfordatascience/tidytuesday/blob/main/data/2024/2024-11-26/readme.md)

#Save the CBP response data to the package
usethis::use_data(cbp_resp, overwrite = TRUE)
#Save the CBP state data to the package
usethis::use_data(cbp_state, overwrite = TRUE)

#' @description CBP response data
#' @format A data frame with (68815)rows and (12)columns
#' @source https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2024/2024 - 11 - 26/cbp_resp.csv
#' @examples
#' data(cbp_resp)
#' head(cbp_resp)
"cbp_resp"

#' @description CBP state data
#' @format A data frame with (54939)rows and (9) columns
#' @source https://raw.githubusercontent.com/rfordatascience/tidytuesday/main/data/2024/2024 - 11 - 26/cbp_state.csv
#' @examples
#' data(cbp_state)
#' head(cbp_state)
"cbp_state"
