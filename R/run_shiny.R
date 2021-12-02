#' @export
MC_gui = function(){
  appDir = system.file("g4lfun", package = "FinalProjectG4")
  shiny::runApp(appDir, display.mode = "normal")
}