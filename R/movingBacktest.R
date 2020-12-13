#' movingBacktest
#'
#' @param model an arima model
#' @param tsdataset a time series dataset
#' @param orig the origin point of the backtest
#' @param h the length of the horizon
#'
#' @return this will return the error values for a moving window backtest
#' @export
#'
#' @examples movingBacktest (arima.mod, data, orig=100, h=12)
movingBacktest = function (model, tsdataset, orig, h) {
  iend = length(tsdataset) - (h-1) - orig
  error_values= c()
  for (i in 1:iend) {
    window = tsdataset[i:length(tsdataset)]
    movingbacktest <- backtest(model, window, orig, h, reest=1)
    errors = movingbacktest$error [1,]
    error_values = rbind(error_values, errors)
  }
  return(error_values)
}
