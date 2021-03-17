nbtest <- function(x, y, S, suffStat) {
  suppressMessages(library(MXM))
  data <- suffStat$data
  y_value <- data[,y]
  results <- testIndNB(y_value, data, x, S)
  pval <- exp(results$pvalue)
  return(pval)
}
