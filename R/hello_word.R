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

    # CREATE THE FINAL ANALYSIS FILE

    # CREATE THE HEADER FOR FINAL ANALYSIS FILE
    header <- c("---", "title: \"Untitled\"", "author: \"AUTHOR\"",
                "date: \"DATE\"", "output: html_document", "---", "\n")

    # CREATE THE DATA CHUNK FOR FINAL ANALYSIS FILE
    chunk <- c("```{r setup, include = FALSE}", "# SETUP CHUNK FOR EXAMPLE",
               "```", "\n")

    # CREATE THE BODY FOR FINAL ANALYSIS FILE
    body <- c("## R Markdown", "This is where your final analysis should go")

    # COMBINE THE HEADER, DATA CHUNK, AND BODY INTO A SINGLE STRING
    contents <- paste(
        paste(header, collapse = "\n"),
        paste(chunk, collapse = "\n"),
        paste(body, collapse = "\n"),
        sep = "\n")

    # STREAM STRING INTO THE FINAL ANALYSIS FILE
    writeLines(contents, con = file.path(path, "final_analysis.Rmd"))

    #R/make_data.R, R/explore_data.Rmd

}
