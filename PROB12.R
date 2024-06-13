#prak 12 elkom 1
df_rombon = read.delim("clipboard")
head(df_rombon)

model_reg = lm(df_rombon$y~df_rombon$x)
summary(model_reg)


#prak 12 elkom 2
df_rombon = read.delim("clipboard")
df_rombon$brick_dummy <- ifelse(df_rombon$Brick == "Yes", 1,0)
df_rombon$N_dummy1 <- ifelse(df_rombon$Neighborhood == "West", 1,0)
df_rombon$N_dummy2 <- ifelse(df_rombon$Neighborhood == "North", 1,0)
model = lm(df_rombon$Price~df_rombon$SqFt+df_rombon$Bedrooms+df_rombon$Bathrooms+df_rombon$brick_dummy+df_rombon$N_dummy1+df_rombon$N_dummy2)
summary(model)

by(df_rombon$Price, df_rombon$Neighborhood, mean)
by(df_rombon$Price, df_rombon$Brick, mean)