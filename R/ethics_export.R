#' Create an Rda for Ethics data
#'
#' Creates the ethics checklist data file
#'
#' @param NA no parameters
#' @keywords
#' @export
#' @examples
#' ethics_export()
ethics_export <- function() {
    ethics <- readLines("R/ETHICS.md")

    save(ethics, file = "data/ethics.rda")
}

#' Ethics checklist
#'
#' Ethics Checklist from Deon
#'
#' @format simply a character vector with all the makings of the ethics checklist
#' from Deon
#' @source https://deon.drivendata.org
"ethics"
