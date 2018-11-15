install.packages("shiny")
install.packages("patentsview")
install.packages("rvest")
library(shiny)
library(patentsview)
library(tidyverse)

getwd()

readRDS("patentsview_results.rds")

queryResult = search_pv(
  qry_funs$and(
    qry_funs$gte(patent_date = "2018-01-01"),
    qry_funs$lte(patent_date = "2018-03-31")
  ),
  all_pages = TRUE
)
queryResult
class(results)
str(results)
