#' Number of Observations Function
#'
#' @param df this should be a data.frame
#' @param symbol this should be a character string with quotations
#'
#' @return returns the number of observations within the data frame for a stock of a specified ticker symbol
#' @export
#'
#' @examples num_obs(stocks, "63MOONS")
num_obs = function (df, symbol) {
  results = df[which(df$SYMBOL == symbol),]
  dim(results)[1]
}

