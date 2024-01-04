check_normality <- function(data) {
  # Shapiro-Wilk test for normality
  shapiro_test <- shapiro.test(data)
  
  # Q-Q plot
  qqnorm(data)
  qqline(data)
  
  # Output the results
  cat("Shapiro-Wilk Test for Normality:\n")
  print(shapiro_test)
  
  if (shapiro_test$p.value > 0.05) {
    cat("\nThe data appears to be normally distributed based on the Shapiro-Wilk test.\n")
  } else {
    cat("\nThe data does not appear to be normally distributed based on the Shapiro-Wilk test.\n")
  }
}
