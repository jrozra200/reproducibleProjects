#' Build the README.md file
#'
#' This function will create a placeholder for your README file
#'
#' @param path The path for the new project being created.
#' @return README document for the new project
#' @export
build_README <- function(path) {

    contents <- paste(
        paste(rm_body(path), collapse = "\n"),
        paste(ethics_checklist(), collapse = "\n"),
        sep = "\n")

    # STREAM STRING INTO THE FINAL ANALYSIS FILE
    writeLines(contents, con = file.path(path, "README.md"))
}

#' Create the body for the Final Rmd Doc
#'
#' Create the body for the final Rmd Doc
#'
#' @param path The path for the new project being created.
#' @return body contents for README file
#' @export
rm_body <- function(path) {
    # CREATE THE BODY FOR FINAL ANALYSIS FILE

    title <- gsub("^(/\\w+)+/", "", path)
    title <- gsub("/$", "", title)

    body <- c(paste0("# ", title),
              "",
              "There are four top level directories, one final RMarkdown document, and a README created at the outset. The full topology is:",
              "", "```", "Project/", "|---- R/", "|---- data/",
              "      |---- external/", "      |---- raw/",
              "      |---- interim/", "      |---- processed",
              "|---- visualization/", "|---- output/",
              "|---- final_analysis.Rmd", "```", "", "## `R` Directory", "",
              "This is where all R code goes. It is best practice, though I am not sure I follow it, to functionalize all of your analysis, then call those functions in the `final_analysis.Rmd` document. ",
              "", "It would also be appropriate to include exploratory and other code that may not be ultimately used in the final output.",
              "", "## `data` Directory", "",
              "There are 4 subdirectories here: `external`, `raw`, `interim`, and `processed`. ",
              "", "The `raw` data should never be changed (some might use the big word immutable). Keep that initial data here. Once you've edited it in anyway, it should then go in the `interim` (if it is not in the final state) or the `processed` (if it is finalized) directories. ",
              "", "If your project will ultimately ship some sort of data, it should be kept in the `processed` directory. ",
              "", "The `external` directory is meant to house any tangential datasets from external sources. ",
              "", "## `visualization` Directory", "",
              "This is where any data visualizations should be kept. Often the point of analysis is to create compelling data viz that will be copy/pasted into another medium (yep... thinking about you, PowerPoint). Your data viz should be properly labeled and stored here.",
              "", "## `output` Directory", "",
              "Any other artifacts that arise as part of your analysis: logs, simulation, etc. should be placed here.",
              "", "## `final_analysis.Rmd` ", "",
              "This file should be the source of truth. When you come back to your analysis in 6 months, click `knit` and you should get the exact output of your analysis. This script will call the R functions, datasets, and then create viz and other outputs. ",
              "", "### The Ethics Checklist", "",
              "One important note: in the `final_analysis.Rmd`, the last section is [DrivenData's deon Ethics Checklist](https://deon.drivendata.org/). Not to dive into a rant, but ethics is the foundation to all things, data science especially. To ensure that it remains at the crux of all the things, I've included this checklist. By having it as part of your output, you have to actively remove it in order to be unethical. ",
              "", "What you do is important. Make sure it is ethical.\n")

    return(body)
}

#' Create the Ethics Checklist for the Final Rmd Doc
#'
#' This ethics checklist comes directly from https://deon.drivendata.org
#'
#' @return ethics checklist contents for README file
#' @export
ethics_checklist <- function() {
    ethics <- c("# Data Science Ethics Checklist",
                "",
                "[![Deon badge](https://img.shields.io/badge/ethics%20checklist-deon-brightgreen.svg?style=popout-square)](http://deon.drivendata.org/)",
                "",
                "## A. Data Collection",
                "- [ ] **A.1 Informed consent**: If there are human subjects, have they given informed consent, where subjects affirmatively opt-in and have a clear understanding of the data uses to which they consent?",
                "- [ ] **A.2 Collection bias**: Have we considered sources of bias that could be introduced during data collection and survey design and taken steps to mitigate those?",
                "- [ ] **A.3 Limit PII exposure**: Have we considered ways to minimize exposure of personally identifiable information (PII) for example through anonymization or not collecting information that isn't relevant for analysis?",
                "- [ ] **A.4 Downstream bias mitigation**: Have we considered ways to enable testing downstream results for biased outcomes (e.g., collecting data on protected group status like race or gender)?",
                "",
                "## B. Data Storage",
                "- [ ] **B.1 Data security**: Do we have a plan to protect and secure data (e.g., encryption at rest and in transit, access controls on internal users and third parties, access logs, and up-to-date software)?",
                "- [ ] **B.2 Right to be forgotten**: Do we have a mechanism through which an individual can request their personal information be removed?",
                "- [ ] **B.3 Data retention plan**: Is there a schedule or plan to delete the data after it is no longer needed?",
                "",
                "## C. Analysis",
                "- [ ] **C.1 Missing perspectives**: Have we sought to address blindspots in the analysis through engagement with relevant stakeholders (e.g., checking assumptions and discussing implications with affected communities and subject matter experts)?",
                "- [ ] **C.2 Dataset bias**: Have we examined the data for possible sources of bias and taken steps to mitigate or address these biases (e.g., stereotype perpetuation, confirmation bias, imbalanced classes, or omitted confounding variables)?",
                "- [ ] **C.3 Honest representation**: Are our visualizations, summary statistics, and reports designed to honestly represent the underlying data?",
                "- [ ] **C.4 Privacy in analysis**: Have we ensured that data with PII are not used or displayed unless necessary for the analysis?",
                "- [ ] **C.5 Auditability**: Is the process of generating the analysis well documented and reproducible if we discover issues in the future?",
                "",
                "## D. Modeling",
                "- [ ] **D.1 Proxy discrimination**: Have we ensured that the model does not rely on variables or proxies for variables that are unfairly discriminatory?",
                "- [ ] **D.2 Fairness across groups**: Have we tested model results for fairness with respect to different affected groups (e.g., tested for disparate error rates)?",
                "- [ ] **D.3 Metric selection**: Have we considered the effects of optimizing for our defined metrics and considered additional metrics?",
                "- [ ] **D.4 Explainability**: Can we explain in understandable terms a decision the model made in cases where a justification is needed?",
                "- [ ] **D.5 Communicate bias**: Have we communicated the shortcomings, limitations, and biases of the model to relevant stakeholders in ways that can be generally understood?",
                "",
                "## E. Deployment",
                "- [ ] **E.1 Redress**: Have we discussed with our organization a plan for response if users are harmed by the results (e.g., how does the data science team evaluate these cases and update analysis and models to prevent future harm)?",
                "- [ ] **E.2 Roll back**: Is there a way to turn off or roll back the model in production if necessary?",
                "- [ ] **E.3 Concept drift**: Do we test and monitor for concept drift to ensure the model remains fair over time?",
                "- [ ] **E.4 Unintended use**: Have we taken steps to identify and prevent unintended uses and abuse of the model and do we have a plan to monitor these once the model is deployed?",
                "",
                "*Data Science Ethics Checklist generated with [deon](http://deon.drivendata.org).*")

    return(ethics)
}

