#' Reproducible Analysis
#'
#' This should allow you to create reproducible analysis in R
#' @param path, ...
#' @keywords reproducible analysis
#' @export
#' @examples
#' hello_world()
hello_world <- function(path, ...) {

    # ensure path exists
    dir.create(path, recursive = TRUE, showWarnings = FALSE)
    dir.create(paste0(path, "/R"), recursive = TRUE, showWarnings = FALSE)
    dir.create(paste0(path, "/data"), recursive = TRUE, showWarnings = FALSE)
    dir.create(paste0(path, "/viz"), recursive = TRUE, showWarnings = FALSE)
    dir.create(paste0(path, "/output"), recursive = TRUE, showWarnings = FALSE)


    #final_analysis.Rmd, R/make_data.R, R/explore_data.Rmd, data/external/, data/raw/, data/interim/, data/processed/, viz/, output/

}
