x=rnorm(100, 0,1)
View(x)
hist(x)
pnorm(160, 165, 6)
1-pnorm(180, 165, 6)
pnorm(180, 165, 6) - pnorm(160, 165, 6)
pnorm(84, mean = 72, sd = 15.2, lower.tail = FALSE)


#latihan 2 tugas 1
n <- 1000
mean_height <- 165
sd_height <- 15
height_data <- rnorm(n, mean_height, sd_height)
summary(height_data)
hist(height_data, main = "Histogram Tinggi Badan", xlab = "Tinggi Badan (cm)", ylab = "Frekuensi", col = "blue", border = "black")
n <- 1000
mean_gpa <- 3.12
sd_gpa <- 0.25
gpa_data <- rnorm(n, mean_gpa, sd_gpa)
summary(gpa_data)
hist(gpa_data, main = "Histogram Nilai IPK Mahasiswa", xlab = "Nilai IPK", ylab = "Frekuensi", col = "green", border = "black")


#latihan 3 tugas 2
mean_height <- 165
sd_height <- 6
prob_less_than_150 <- pnorm(150, mean = mean_height, sd = sd_height)
prob_less_than_150
prob_more_than_170 <- 1 - pnorm(170, mean = mean_height, sd = sd_height)
prob_more_than_170
prob_between_150_and_180 <- pnorm(180, mean = mean_height, sd = sd_height) - pnorm(150, mean = mean_height, sd = sd_height)
prob_between_150_and_180
n_students <- 7
max_successes <- 2
prob_2_or_less <- pbinom(max_successes, size = n_students, prob = prob_between_150_and_180)
prob_2_or_less


#latihan 4 tugas 3
mean_time <- 175
sd_time <- 30
prob_less_than_158 <- pnorm(158, mean = mean_time, sd = sd_time)
prob_less_than_125 <- pnorm(125, mean = mean_time, sd = sd_time)
prob_between_125_and_158 <- prob_less_than_158 - prob_less_than_125
prob_between_125_and_158
prob_less_than_150 <- pnorm(150, mean = mean_time, sd = sd_time)
prob_more_than_150 <- 1 - prob_less_than_150
prob_more_than_150
