#' Create the necessary file structure
#'
#' This function creates the necessary file structure for your analysis.
#'
#' @param path pass a path to the function
#' @export
create_directories <- function(path) {

    # CREATE THE PARENT DIRECTORY; ENSURE THAT PATH EXISTS
    dir.create(path, recursive = TRUE, showWarnings = FALSE)

    # CREATE THE R DIRECTORY; ENSURE THAT PATH EXISTS
    dir.create(paste0(path, "/R"), recursive = TRUE, showWarnings = FALSE)

    # CREATE THE DATA DIRECTORY & SUBDIRECTORIES; ENSURE THAT PATH EXISTS
    dir.create(paste0(path, "/data"), recursive = TRUE, showWarnings = FALSE)
    dir.create(paste0(path, "/data/external"), recursive = TRUE, showWarnings = FALSE)
    dir.create(paste0(path, "/data/raw"), recursive = TRUE, showWarnings = FALSE)
    dir.create(paste0(path, "/data/interim"), recursive = TRUE, showWarnings = FALSE)
    dir.create(paste0(path, "/data/processed"), recursive = TRUE, showWarnings = FALSE)

    # CREATE THE VISUALIZATON DIRECTORY; ENSURE THAT PATH EXISTS
    dir.create(paste0(path, "/visualization"), recursive = TRUE, showWarnings = FALSE)

    # CREATE THE OUTPUT DIRECTORY; ENSURE THAT PATH EXISTS
    dir.create(paste0(path, "/output"), recursive = TRUE, showWarnings = FALSE)
}
