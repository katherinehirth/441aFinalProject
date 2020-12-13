#' Nutrition data on 80 cereal products
#'
#' @format 77 x 16 data frame
#' \describe{
#' \item{Name}{Name of cereal}
#' \item{mfr}{Manufacturer of cereal (A = American Home Food Products; G = General Mills; K = Kelloggs; N = Nabisco; P = Post; Q = Quaker Oats; R = Ralston Purina}
#' \item{type}{cold or hot}
#' \item{calories}{calories per serving}
#' \item{protein}{grams of protein}
#' \item{fat}{grams of fat}
#' \item{sodium}{milligrams of sodium}
#' \item{fiber}{grams of dietary fiber}
#' \item{carbo}{grams of complex carbohydrates}
#' \item{sugars}{grams of sugars}
#' \item{potass}{milligrams of potassium}
#' \item{vitamins}{vitamins and minerals - 0, 25, or 100, indicating the typical percentage of FDA recommended}
#' \item{shelf}{display shelf (1, 2, or 3, counting from the floor)}
#' \item{weight}{weight in ounces of one serving}
#' \item{cups}{number of cups in one serving}
#' \item{rating}{a rating of the cereals (Possibly from Consumer Reports?)}
#' }
"cereal"

cereal = read.csv("cereal.csv")

usethis::use_data(cereal, overwrite = TRUE)

