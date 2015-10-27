#!/usr/bin/env Rscript

update.packages(ask = FALSE)
packages <- c("DiagrammeR",
              "USAboundaries",
              "broom",
              "gender",
              "historydata",
              "humaniformat",
              "internetarchive",
              "leaflet",
              "packrat",
              "readr",
              "shinythemes")
uninstalled <- setdiff(packages, rownames(installed.packages()))
if (length(uninstalled) > 0)
  install.packages(uninstalled)

# install.packages("StanfordCoreNLP", repos = "http://datacube.wu.ac.at",
#                  type = "source")
