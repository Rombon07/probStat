#LATIHAN PERTAMA -A
Dataku_rombon=read.delim("clipboard")
str(Dataku_rombon)

Dataku_rombon$X <- as.numeric(as.character(Dataku_rombon$X))
Dataku_rombon$X.1 <- as.numeric(as.character(Dataku_rombon$X.1))

sum(is.na(Dataku_rombon$X))
sum(is.na(Dataku_rombon$X.1))

wilcox.test(Dataku_rombon$X, Dataku_rombon$X.1,paired = TRUE)


#LATIHAN PERTAMA -B

Dataku_rombon=read.delim("clipboard")
str(Dataku_rombon)

Dataku_rombon$Sebelum <- as.numeric(as.character(Dataku_rombon$Sebelum))
Dataku_rombon$Sesudah <- as.numeric(as.character(Dataku_rombon$Sesudah))

sum(is.na(Dataku_rombon$Sebelum))
sum(is.na(Dataku_rombon$Sesudah))

wilcox.test(Dataku_rombon$Sebelum, Dataku_rombon$Sesudah,paired = TRUE)


#LATIHAN KEDUA
df_rombon=read.delim("clipboard")
wilcox.test(df_rombon$obat~df_rombon$grup)
rank(df_rombon$obat)


#latihan ketiga tugas 1
# Membuat dataframe dari data yang diberikan
mahasiswa <- 1:9
ganjil <- c(64, 62, 45, 66, 70, 62, 80, 54, 65)
genap <- c(54, 77, 50, 54, 89, 56, 72, 65, 76)
df <- data.frame(Mahasiswa = mahasiswa, Ganjil = ganjil, Genap = genap)
# Melakukan uji Wilcoxon signed-rank test dengan exact = FALSE
hasil_uji <- wilcox.test(df$Ganjil, df$Genap, paired = TRUE, exact = FALSE)
# Menampilkan hasil uji
print(hasil_uji)


#latihan ketiga tugas 2

df <- data.frame(
  obat = c(96, 99, 94, 89, 96, 93, 88, 105, 88, 105, 119, 100, 97, 96, 101, 94, 95, 98),
  grup = c(rep("caffeine", 9), rep("placebo", 9))
)
hasil_uji <- wilcox.test(obat ~ grup, data = df, exact = FALSE)
print(hasil_uji)
