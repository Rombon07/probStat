rombon=read.delim("clipboard")
View(rombon)
str(rombon)
volume <- c(15000, 15500, 17500, 14500, 14000, 16000, 14500, 15500, 16500, 14000)
class(volume)
sum(is.na(volume))
mean_volume <- mean(volume)
mean_volume