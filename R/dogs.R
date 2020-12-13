#' Data about Dog Owners in Zurich, Switzerland
#'
#' @format 6980 x 13 data frame
#' \describe{
#' \item{ALTER}{Age}
#' \item{GESCHLECHT}{Gender}
#' \item{STADTKREIS}{City Quarter or District}
#' \item{RASSE1}{Dog's Primary Breed}
#' \item{RASSE2}{Dog's Secondary Breed}
#' \item{GEBURTSJAHR_HUND}{Dog's Year of Birth}
#' \item{GESCHLECHT_HUND}{Dog's Gender}
#' \item{HUNDEFARBE}{Dog's Color}
#' }
"dogs"

dogs = read.csv("dogs.csv")

usethis::use_data(dogs, overwrite = TRUE)
