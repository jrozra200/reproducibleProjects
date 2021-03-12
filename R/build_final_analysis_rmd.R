#' Build the final_analysis.Rmd file
#'
#' This function will create a placeholder for your final analysis Rmd file
#'
#' @param path pass a path to the function
#' @keywords
#' @export
#' @examples
#' build_final_analysis_rmd()
build_final_analysis_rmd <- function(path) {

    # CREATE THE FINAL ANALYSIS FILE

    # CREATE THE HEADER FOR FINAL ANALYSIS FILE
    header <- c("---", "title: \"Untitled\"", "author: \"AUTHOR\"",
                "date: \"DATE\"", "output: html_document", "---\n")

    # CREATE THE DATA CHUNK FOR FINAL ANALYSIS FILE
    chunk <- c("```{r setup, include = FALSE}", "# SETUP CHUNK FOR EXAMPLE",
               "```\n")

    # CREATE THE BODY FOR FINAL ANALYSIS FILE
    body <- c("## R Markdown\n", "This is where your final analysis should go")

    # GET ETHICS CHECKLIST FROM DEON
    ethics <- load("ethics")

    # COMBINE THE HEADER, DATA CHUNK, AND BODY INTO A SINGLE STRING
    contents <- paste(
        paste(header, collapse = "\n"),
        paste(chunk, collapse = "\n"),
        paste(body, collapse = "\n"),
        paste(ethics, collapse = "\n"),
        sep = "\n")

    # STREAM STRING INTO THE FINAL ANALYSIS FILE
    writeLines(contents, con = file.path(path, "final_analysis.Rmd"))
}
