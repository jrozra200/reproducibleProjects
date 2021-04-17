#' Reproducible Analysis
#'
#' This should allow you to create reproducible analysis in R
#'
#' @param path pass a path to the function
#' @keywords reproducible analysis
#' @export
#' @examples
#' hello_world()
hello_world <- function(path) {

    # CREATE THE FILE STRUCTURE FOR THE ANALYSIS
    create_directories(path)

    # CREATE THE FINAL ANALYSIS FILE
    build_final_analysis_rmd(path)

    # CREATE THE README FILE
    build_README(path)
}
