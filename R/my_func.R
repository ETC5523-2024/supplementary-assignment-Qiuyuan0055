#' @export
run_app <- function() {
  app_dir <- system.file("app",package = "cbp.analysis")
  shiny::runApp(app_dir,display.mode = "normal")
}
