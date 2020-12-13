#' MAPEbacktest
#'
#' @param model this should be an arima model
#' @param tsdataset this should be a time series dataset
#' @param orig the origin point where you want to start backtesting
#' @param h length of the horizon to backtest
#' @param plot boolean to generate a plot or not
#'
#' @return this will run a recursive backtest for your dataset and return the MAPE values for each iteration. It can also generate a plot to display these values.
#' @export
#'
#' @examples MAPEbacktest(arima.mod, data, orig=100, h=12, plot=TRUE)
MAPEbacktest = function (model, tsdataset, orig, h=10, plot=FALSE) {
  iend = length(tsdataset) - (h-1) - orig
  backtesting <- backtest(model, tsdataset, orig, h, reest=1)
  MAPEvalues = c()
  for (i in 1:iend) MAPEvalues[i] = {
    backtesting.forecasts = backtesting$forecasts[i,]
    actuals = log_employment.ts[orig:length(tsdataset)]
    mean(backtesting.forecasts/(actuals[i:((h-1)+i)]))
  }
  if (plot == TRUE) {
    return(plot(MAPEvalues, type = "l", main = "MAPE Values",
                xlab = "Iteration", ylab = "MAPE"))
  }
  return(MAPEvalues)
}
