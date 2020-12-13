#' highest_growth
#'
#' @param df this should be a data frame
#' @param timestamp this should be a time stamp in quotations
#' @param n this is the number of observations you want to return (ex. top 5, top 10, etc)
#'
#' @return this will return the top n growth from a specific date. Growth is calculated as the difference between that day's close and the previous close.
#' @export
#'
#' @examples highest_growth(stocks, "2017-12-29", n=5)
highest_growth = function(df, timestamp, n=10) {
  newdf = df[which(df$TIMESTAMP == timestamp),]
  newdf$growth = PREVCLOSE - CLOSE
  attach(newdf)
  ordered_df = newdf[order(growth, decreasing=TRUE),]
  print(ordered_df[1:n,])
}
