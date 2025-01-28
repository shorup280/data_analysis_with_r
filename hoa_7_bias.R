# Define a vector of actual temperatures (observed values)
actual_temp <- c(35, 35, 32, 36, 29, 30)

# Define a vector of predicted temperatures (model's predictions)
predicted_temp <- c(34, 36, 30, 35, 28, 29)

# Calculate the bias between actual and predicted temperatures
# Bias measures the average difference between actual and predicted values.
bias(actual_temp, predicted_temp)

# Define a vector of actual sales in BDT (observed values)
actual_salesinbdt <- c(100, 200, 300, 400, 500)

# Define a vector of predicted sales in BDT (model's predictions)
predicted_salesinbdt <- c(120, 250, 360, 470, 580)

# Calculate the bias between actual and predicted sales
# This will show whether the predictions consistently overestimate or underestimate the actual values.
bias(actual_salesinbdt, predicted_salesinbdt)
