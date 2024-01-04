mann_whitney_test <- function(data1, data2) {
  # Perform Mann-Whitney U test
  mwu_test <- wilcox.test(data1, data2)
  
  # Output the results
  cat("Mann-Whitney U Test:\n")
  print(mwu_test)
  
  if (mwu_test$p.value < 0.05) {
    cat("\nThe two data sets are significantly different.\n")
  } else {
    cat("\nThere is no significant difference between the two data sets.\n")
  }
}
