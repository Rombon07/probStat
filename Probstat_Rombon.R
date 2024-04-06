data_rombon = read.csv("clipboard", sep = ",")
View(data_rombon)

rombon <- data_rombon[data_rombon$Bedrooms==2,]  
View(rombon)

rombon$Bathrooms <- ifelse(rombon$Bathrooms > 2, c("large"), c("small"))
View(rombon)

rombon$newvariable <- ifelse(rombon$Offers > 2, c("large"), c("small")) 
View(rombon)

rombon$newvariable <- rombon$Price/rombon$SqFt
View(rombon)

rombon$newvariable<-NULL

data_rombon.kolom1dan2 <- data_rombon[,1:2] 
View(data_rombon.kolom1dan2)

data_rombon.kolom3dan4 <- data_rombon[,3:4] 
View(data_rombon.kolom3dan4)

data_rombon.kolom1sd4<-cbind(data_rombon.kolom1dan2, data_rombon.kolom3dan4) 
View(data_rombon.kolom1sd4)

data_rombon.baris1sd3 <- data_rombon[1:3,] 
data_rombon.baris4sd6 <- data_rombon[4:6,] 
data_rombon.baris1sd6 <- rbind(data_rombon.baris1sd3, data_rombon.baris4sd6) 
View(data_rombon.baris1sd6)

data_rombon.sort<-data_rombon[order(data_rombon$Price),] 
View(data_rombon.sort)

#elkom 2
data_mhs = read.csv("clipboard", sep = ",")
View(data_mhs)

mhs <- data_mhs[data_mhs$tinggi.badan,]
View(data_mhs)

data_mhs$`tinggi badan` <- ifelse(data_mhs$`tinggi badan` > 160, c("tinggi"), c("pendek"))
View(data_mhs)

data_mhs$jurusan <- ifelse(data_mhs$`tinggi badan` > 160, c("infor23"))
View(data_mhs)
data_mhs$fakultas <- ifelse(data_mhs$`tinggi badan` > 160, c("FTI"))
View(data_mhs)

data_mhs$fakultas<-NULL

data_mhs.kolom1dan2 <- data_mhs[,1:2]
View(data_mhs.kolom1dan2)
data_mhs.kolom3dan4 <- data_mhs[,3:4]
View(data_mhs.kolom3dan4)
data_mhs.kolom1sd4<-cbind(data_mhs.kolom1dan2, data_mhs.kolom3dan4)
View(data_mhs.kolom1sd4)

data_mhs.baris1sd5<- data_mhs[1:5,]
data_mhs.baris25sd30<- data_mhs[25:30,]
data_mhs.baris1sd30<-rbind(data_mhs.baris1sd5, data_mhs.baris25sd30)
View(data_mhs.baris1sd30)

data_mhs.sort<-data_mhs[order(data_mhs$waktu),]
View(data_mhs.sort)
