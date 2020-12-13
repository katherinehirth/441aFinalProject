#' errormetrics
#'
#' @param reg.mod a regression model
#'
#' @return will return the MSE and MAD in a matrix for the regression model
#' @export
#'
#' @examples errormetrics(reg.mod)
errormetrics <- function (reg.mod) {
  MSE <- DescTools::MSE(reg.mod)
  MAD <- DescTools::MAD(residuals(reg.mod))
  e.rownames = c("MSE","MAD")
  e.colnames = deparse(substitute(reg.mod))
  metrics = matrix(c(MSE, MAD), nrow=2, ncol=1, byrow=TRUE,
                   dimnames = list(e.rownames, e.colnames))}

