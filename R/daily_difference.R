#' daily_difference
#'
#' @param df this should be a data frame
#' @param symbol this should be a character string with quotations
#'
#' @return this will return a data frame with the daily difference from the average growth for a specified ticker symbol. It will also print out the mean daily growth and the mean difference from daily growth at the end.
#' @export
#'
#' @examples daily_difference (stocks, "63MOON")
daily_difference = function(df, symbol) {
  newdf = df[which(df$SYMBOL == symbol),]
  daily_growth = newdf$CLOSE - newdf$OPEN
  Difference = daily_growth - mean(daily_growth)
  difference_from_mean <- data.frame(ID = rownames(newdf), Difference)
  print(difference_from_mean)
  print("Mean Daily Growth")
  print(mean(daily_growth))
  print("Mean Difference from Daily Growth")
  print(mean(difference))
}
