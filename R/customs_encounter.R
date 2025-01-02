#' CBP Response Data
#'
#' This dataset contains information about border encounters, categorized by fiscal year, demographics, and other attributes.
#'
#' @format A data frame with columns:
#' \describe{
#'   \item{fiscal_year}{Fiscal year of the encounters.}
#'   \item{demographic}{Demographic group of the encounters (e.g., "Unaccompanied Children").}
#'   \item{encounter_count}{Number of encounters recorded.}
#' }
#' @source CBP public data
#' @name cbp_resp
"cbp_resp"

#' CBP State Data
#'
#' This dataset provides state-level summaries of CBP encounters.
#'
#' @format A data frame with columns:
#' \describe{
#'   \item{state}{State where encounters occurred.}
#'   \item{encounter_count}{Total number of encounters in the state.}
#' }
#' @source CBP public data
#' @name cbp_state
"cbp_state"
