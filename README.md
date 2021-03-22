# Reproducible Projects

This package is designed to allow for and facilitate reproducible projects to be 
created in RStudio. It is really easy to work on a full analysis, deliver some 
output, then shelve the code; when you are asked to revisit it for whatever 
reason down the line, it can be a fraught exercise to figure out what you did. 

To ensure that analysis projects are built from the outset in a reproducible 
way, this package was created. 

The inspiration for this package comes from 
[DrivenData's Cookiecutter Data Science Project](https://drivendata.github.io/cookiecutter-data-science/) 
and 
[Rich Fitzjohn's Designing Projects Blog Post](https://nicercode.github.io/blog/2013-04-05-projects/). 

Also included in this template is 
[DrivenData's deon Ethics Checklist](https://deon.drivendata.org/).

# Installation

This package will be submitted to [cran](https://cran.r-project.org/) - and 
these instructions will be updated if/when this package is available there. At 
this time, you can install directly from github.

``` {r}
install.packages("devtools")
devtools::install_github("jrozra200/reproduciblePackages")
```

After installation, you can create a new project using the reproducible project 
template: `File > New Project > New Directory > Reproducible Project Template`.

# The Structure and Intention

There are four top level directories and one final RMarkdown document created 
at the outset. The full topology is:

```
Project/
|---- R/
|---- data/
      |---- external/
      |---- raw/
      |---- interim/
      |---- processed
|---- visualization/
|---- output/
|---- final_analysis.Rmd
```

## `R` Directory

This is where all R code goes. It is best practice, though I am not sure I 
follow it, to functionalize all of your analysis, then call those functions in 
the `final_analysis.Rmd` document. 

It would also be appropriate to include exploratory and other code that may not 
be ultimately used in the final output.

## `data` Directory

There are 4 subdirectories here: `external`, `raw`, `interim`, and `processed`. 

The `raw` data should never be changed (some might use the big word immutable). 
Keep that initial data here. Once you've edited it in anyway, it should then go 
in the `interim` (if it is not in the final state) or the `processed` (if it is 
finalized) directories. 

If your project will ultimately ship some sort of data, it should be kept in the 
`processed` directory. 

The `external` directory is meant to house any tangential datasets from external 
sources. 

## `visualization` Directory

This is where any data visualizations should be kept. Often the point of 
analysis is to create compelling data viz that will be copy/pasted into another 
medium (yep... thinking about you, PowerPoint). Your data viz should be properly 
labeled and stored here.

## `output` Directory

Any other artifacts that arise as part of your analysis: logs, simulation, etc. 
should be placed here.

## `final_analysis.Rmd` 

This file should be the source of truth. When you come back to your analysis in 
6 months, click `knit` and you should get the exact output of your analysis. 
This script will call the R functions, datasets, and then create viz and other 
outputs. 

### The Ethics Checklist

One important note: in the `final_analysis.Rmd`, the last section is 
[DrivenData's deon Ethics Checklist](https://deon.drivendata.org/). Not to dive 
into a rant, but ethics is the foundation to all things, data science especially. 
To ensure that it remains at the crux of all the things, I've included this 
checklist. By having it as part of your output, you have to actively remove it 
in order to be unethical. 

What you do is important. Make sure it is ethical. 

# What is left to do?

This package needs to be submitted to cran. It also has not been used in the 
wild, yet, so it may need tweaks as I go. 
