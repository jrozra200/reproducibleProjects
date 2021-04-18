#' Build the final_analysis.Rmd file
#'
#' This function will create a placeholder for your final analysis Rmd file
#'
#' @param path The path for the new project being created.
#' @return Final analysis document for the new project
#' @export
build_final_analysis_rmd <- function(path) {

    # CREATE THE FINAL ANALYSIS FILE

    # COMBINE THE HEADER, DATA CHUNK, AND BODY INTO A SINGLE STRING
    contents <- paste(
        paste(header(), collapse = "\n"),
        paste(chunk(), collapse = "\n"),
        paste(fa_body(), collapse = "\n"),
        sep = "\n")

    # STREAM STRING INTO THE FINAL ANALYSIS FILE
    writeLines(contents, con = file.path(path, "final_analysis.Rmd"))
}

#' Create the header for the Final Rmd Doc
#'
#' Create the header for the final Rmd Doc
#'
#' @export
header <- function() {
    # CREATE THE HEADER FOR FINAL ANALYSIS FILE
    header <- c("---", "title: \"Untitled\"", "author: \"AUTHOR\"",
                "date: \"DATE\"", "output: html_document", "---\n")

    return(header)
}


#' Create the code chunk for the Final Rmd Doc
#'
#' Create the sample code chunk for the final Rmd Doc
#'
#' @export
chunk <- function() {
    # CREATE THE DATA CHUNK FOR FINAL ANALYSIS FILE
    chunk <- c("```{r setup, include = FALSE}", "# SETUP CHUNK FOR EXAMPLE",
               "```\n")

    return(chunk)
}

#' Create the body for the Final Rmd Doc
#'
#' Create the body for the final Rmd Doc
#'
#' @return body contents for README file
#' @export
fa_body <- function() {
    # CREATE THE BODY FOR FINAL ANALYSIS FILE
    contents <- c("# Final RMarkdown File",
                  "",
                  "This is where you should build your final output.")

    return(contents)
}
