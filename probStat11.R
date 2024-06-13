#TUGAS PRAK 11 ELKOM 1 

df_rombon=read.delim("clipboard")
View(df_rombon)
head(df_rombon)
model<- aov(korosi~metode, data=df_rombon)
summary(model)
tukey.test<-TukeyHSD(model)
tukey.test


#TUGAS PRAK 11 ELKOM 2 

df_rombon=PlantGrowth
View(df_rombon)
model<- aov(weight~group, data=df_rombon)
summary(model)
tukey.test<-TukeyHSD(model)
tukey.test