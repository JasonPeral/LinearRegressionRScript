

# Libraries
library(ggplot2)
library(readr)

# Reading data
data <- read_csv("Desktop/q2.csv", col_names = c("x", "y"))
# Convert columns x and y to numeric
data$x <- as.numeric(data$x)
data$y <- as.numeric(data$y)

# Extract vectors for convenience
data_x <- data$x
data_y <- data$y

# Calculations
x_mean <- mean(data_x, na.rm = TRUE)
x_std_dev <- sd(data_x, na.rm = TRUE)
y_mean <- mean(data_y, na.rm = TRUE)
y_std_dev <- sd(data_y, na.rm = TRUE)

SS_xx <- sum((data_x - x_mean)^2, na.rm = TRUE)
SS_xy <- sum((data_x - x_mean) * (data_y - y_mean), na.rm = TRUE)
SS_yy <- sum((data_y - y_mean)^2, na.rm = TRUE)

Beta1 <- SS_xy / SS_xx
Beta0 <- y_mean - Beta1 * x_mean

SSE <- sum((data_y - (Beta0 + Beta1 * data_x))^2, na.rm = TRUE)
s2 <- SSE / (length(data_x) - 2)
s <- sqrt(s2)

s_beta1 <- s / sqrt(SS_xx)
t_c <- Beta1 / s_beta1

r <- SS_xy / sqrt(SS_xx * SS_yy)
r_2 <- r^2

# Print outputs
cat(paste('*******************************************'))
cat(paste('x_mean =', round(x_mean, 4)))
cat(paste('x_variance =', round(x_std_dev^2, 4)))
cat(paste('x_std_dev =', round(x_std_dev, 4)))
cat(paste('*******************************************'))
cat(paste('y_mean =', round(y_mean, 4)))
cat(paste('y_variance =', round(y_std_dev^2, 4)))
cat(paste('y_std_dev =', round(y_std_dev, 4)))
cat(paste('*******************************************'))
cat(paste('SS_xx =', round(SS_xx, 4)))
cat(paste('SS_xy =', round(SS_xy, 4)))
cat(paste('SS_yy =', round(SS_yy, 4)))
cat(paste('*******************************************'))
cat(paste('Model: y =', round(Beta0, 4), '+', round(Beta1, 4), 'x'))
cat(paste('*******************************************'))
cat(paste('SSE =', round(SSE, 4)))
cat(paste('*******************************************'))
cat(paste('s^2 =', round(s2, 4)))
cat(paste('s =', round(s, 4)))
cat(paste('*******************************************'))
cat(paste('s_beta1 =', round(s_beta1, 4)))
cat(paste('t_c =', round(t_c, 4)))
cat(paste('*******************************************'))
cat(paste('r =', round(r, 4)))
cat(paste('r^2 =', round(r_2, 4)))
cat(paste('*******************************************'))
cat(paste('>>> END <<<'))

# Plotting
plot(data_x, data_y, col = "orange", main = "Linear Regression", xlab = "X", ylab = "Y")
abline(Beta0, Beta1, col = "blue")