#' Build the README.md file
#'
#' This function will create a placeholder for your README file
#'
#' @param path The path for the new project being created.
#' @return README document for the new project
#' @export
build_README <- function(path) {
    title <- gsub("^(/\\w+)+/", "", path)
    title <- gsub("/$", "", title)
    contents <- paste(paste0("# ", title),
                      "",
                      "This project was created using the reproducibleProjects Template. ",
                      "",
                      "The author responsible for this analysis is a really smart person!",
                      collapse = "\n", sep = "\n")

    # STREAM STRING INTO THE FINAL ANALYSIS FILE
    writeLines(contents, con = file.path(path, "final_analysis.Rmd"))
}
