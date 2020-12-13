#' Nutrition information for Starbucks menu items, including food and drinks
#'
#' @format 177 x 7 data frame
#' \describe{
#' \item{Calories}{Calories in the drink}
#' \item{Fat}{Fat in the drink}
#' \item{Carb}{Carbohydrates in the drink}
#' \item{Fiber}{Riber in the drink}
#' \item{Protein}{Protein in the drink}
#' \item{Sodium}{Sodium in the drink}
#' }
"starbucks"

starbucks = read.csv("starbucks.csv")

usethis::use_data(starbucks, overwrite = TRUE)
