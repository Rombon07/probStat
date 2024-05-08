view(rombon)
str(rombon)
rombon$volume <- as.numeric(gsub(",", "", rombon$volume))
mean(rombon$Volume, na.rm = TRUE)
t.test(rombon$Volume, mu=10)

t.test(rombon$Volume, conf.level = 0.50)