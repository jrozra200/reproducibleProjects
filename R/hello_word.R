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

}
