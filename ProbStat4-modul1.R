view(rombon)
str(rombon)
rombon$Volume <- as.numeric(gsub(",", "", rombon$Volume))
mean(rombon$Volume, na.rm = TRUE)
t.test(rombon$Volume, mu=10)

t.test(rombon$Volume, conf.level = 0.50)
