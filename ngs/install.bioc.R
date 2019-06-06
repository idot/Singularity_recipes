#!/usr/bin/Rscript

install.packages("BiocManager", dependencies = TRUE, repos="http://cran.us.r-project.org")

pkgs <- c("roxygen2", "devtools") #,"tidyverse","purrrlyr","graph",)

ap.db <- available.packages(contrib.url(BiocManager::repositories()))
ap <- rownames(ap.db)

pkgs_to_install <- pkgs[pkgs %in% ap]

ok <- BiocManager::install(pkgs_to_install, update=FALSE, ask=FALSE, dependencies = TRUE) %in% rownames(installed.packages())
if (!all(ok)){
    stop("Failed to install:\n  ", paste(pkgs_to_install[!ok], collapse="  \n  "))
}
suppressWarnings(BiocManager::install(update=TRUE, ask=FALSE))


devtools::install_github("idot/idoplots", ask=FALSE, dependencies = TRUE)



