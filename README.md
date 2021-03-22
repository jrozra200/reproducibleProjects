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

# What is left to do?

This package needs to be submitted to cran. It also has not been used in the 
wild, yet, so it may need tweaks as I go. 
