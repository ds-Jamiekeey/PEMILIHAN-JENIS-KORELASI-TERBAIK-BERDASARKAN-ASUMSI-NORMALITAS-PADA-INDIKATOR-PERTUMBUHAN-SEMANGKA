library(readxl)
data_korelasi = read_xlsx("Downloads/Data Penelitian Sawojajar.xlsx",sheet = "Rerata")
data_korelasi_clear = data_korelasi[-11,]
data_korelasi_clear

x1 = data_korelasi_clear$`Tinggi Tanaman`
x2 = data_korelasi_clear$`Luas daun`
x3 = data_korelasi_clear$`Umur berbunga`
x4 = data_korelasi_clear$`Umur panen`
x5 = data_korelasi_clear$`Panjang buah`
x6 = data_korelasi_clear$`Diameter buah`
x7 = data_korelasi_clear$`Ketebalan daging`
x8 = data_korelasi_clear$`Berat buah`
x9 = data_korelasi_clear$Brix
x10 = data_korelasi_clear$`Diameter ruang biji`

##korelasi x1 terhadap ...
#signifikansi korelasi x1 dengan x2 
x12 = cor.test(x1,x2, method = "pearson")
#signifikansi korelasi x1 dengan x3
x13 = cor.test(x1,x3, method = "pearson")
#signifikansi korelasi x1 dengan x4
x14 = cor.test(x1,x4, method = "pearson")
#signifikansi korelasi x1 dengan x5
x15 = cor.test(x1,x5, method = "pearson")
#signifikansi korelasi x1 dengan x6
x16 = cor.test(x1,x6, method = "pearson")
#signifikansi korelasi x1 dengan x7
x17 = cor.test(x1,x7, method = "pearson")
#signifikansi korelasi x1 dengan x8
x18 = cor.test(x1,x8, method = "pearson")
#signifikansi korelasi x1 dengan x9
x19 = cor.test(x1,x9, method = "pearson")
#signifikansi korelasi x1 dengan x10
x110 = cor.test(x1,x10, method = "pearson")

korelasi_x1= c("x12", "x13", "x14", "x15", "x16", 'x17', "x18", "x19", "x110")
p_value_x1 = c(x12$p.value, x13$p.value, x14$p.value, x15$p.value, x16$p.value, x17$p.value, x18$p.value,
               x19$p.value, x110$p.value)
kor_x1 = data.frame(korelasi_x1,p_value_x1)
kor_x1

##korelasi x2 terhadap ...
x23 = cor.test(x2, x3, method = "pearson")
x24 = cor.test(x2, x4, method = "pearson")
x25 = cor.test(x2, x5, method = "pearson")
x26 = cor.test(x2, x6, method = "pearson")
x27 = cor.test(x2, x7, method = "pearson")
x28 = cor.test(x2, x8, method = "pearson")
x29 = cor.test(x2, x9, method = "pearson")
x210 = cor.test(x2, x10, method = "pearson")

korelasi_x2= c("x23", "x24", "x25", "x26", "x27", 'x28', "x29", "x210")
p_value_x2 = c(x23$p.value, x24$p.value, x25$p.value, x26$p.value, x27$p.value, x28$p.value, x29$p.value, x210$p.value)
kor_x2 = data.frame(korelasi_x2,p_value_x2)
kor_x2

#korelasi x3 terhadap...
x34 = cor.test(x3,x4, method = "pearson")
x35 = cor.test(x3,x5, method = "pearson")
x36 = cor.test(x3,x6, method = "pearson")
x37 = cor.test(x3,x7, method = "pearson")
x38 = cor.test(x3,x8, method = "pearson")
x39 = cor.test(x3,x9, method = "pearson")
x310 = cor.test(x3,x4, method = "pearson")

korelasi_x3= c("x34", "x35", "x36", "x37", "x38", "x39", "x310")
p_value_x3 = c(x34$p.value, x35$p.value, x36$p.value, x37$p.value, x38$p.value, x39$p.value, x310$p.value)
kor_x3 = data.frame(korelasi_x3,p_value_x3)
kor_x3

#korelasi x4 terhadap...
x45 = cor.test(x4,x5, method = "pearson")
x46 = cor.test(x4,x6, method = "pearson")
x47 = cor.test(x4,x7, method = "pearson")
x48 = cor.test(x4,x8, method = "pearson")
x49 = cor.test(x4,x9, method = "pearson")
x410 = cor.test(x4,x10, method = "pearson")

korelasi_x4= c("x45", "x46", "x47", "x48", "x49", "x410")
p_value_x4 = c(x45$p.value, x46$p.value, x47$p.value, x48$p.value, x49$p.value, x410$p.value)
kor_x4 = data.frame(korelasi_x4, p_value_x4)
kor_x4

#korelasix5 terhadap....
x56 = cor.test(x5,x6, method = "pearson")
x57 = cor.test(x5,x7, method = "pearson")
x58 = cor.test(x5,x8, method = "pearson")
x59 = cor.test(x5,x9, method = "pearson")
x510 = cor.test(x5,x10, method = "pearson")

korelasi_x5 = c("x56", "x57", "x58", "x59", "x510")
p_value_x5 =c(x56$p.value, x57$p.value, x58$p.value, x59$p.value, x510$p.value)
kor_x5 = data.frame(korelasi_x5, p_value_x5)
kor_x5

#korelasi x6 terhadap...
x67 = cor.test(x6, x7, method = "pearson")
x68 = cor.test(x6, x8, method = "pearson")
x69 = cor.test(x6, x9, method = "pearson")
x610 = cor.test(x6, x10, method = "pearson")

korelasi_x6 = c("x67", "x68", "x69", "x610")
p_value_x6 = c(x67$p.value, x68$p.value, x69$p.value, x610$p.value)
kor_x6 = data.frame(korelasi_x6,p_value_x6)
kor_x6


#korelasi x7 terhadap...
x78 = cor.test(x7,x8, method = "pearson")
x79 = cor.test(x7,x9, method = "pearson")
x710 = cor.test(x7,x10, method = "pearson")

korelasi_x7 = c("x78", "x79", "x710")
p_value_x7 = c(x78$p.value, x79$p.value, x710$p.value)
kor_x7 = data.frame(korelasi_x7, p_value_x7)
kor_x7

#korelasi x8 terhadap...
x89 = cor.test(x8,x9, method = "pearson")
x810 = cor.test(x8,x10, method = "pearson")

korelasi_x8 = c("x89", "x810")
p_value_x8 = c(x89$p.value, x810$p.value)
kor_x8 = data.frame(korelasi_x8, p_value_x8)
kor_x8
#korelasi x9 terhdapa..
x910 = cor.test(x9,x10, method = "pearson")
korelasi_x9 = c("x910")
p_value_x9 = c(x910$p.value)
kor_x9 = data.frame(korelasi_x9, p_value_x9)
kor_x9

write.csv(kor_x1,"korelasi x1.csv")
write.csv(kor_x2,"korelasi x2.csv")
write.csv(kor_x3,"korelasi x3.csv")
write.csv(kor_x4,"korelasi x4.csv")
write.csv(kor_x5,"korelasi x5.csv")
write.csv(kor_x6,"korelasi x6.csv")
write.csv(kor_x7,"korelasi x7.csv")
write.csv(kor_x8,"korelasi x8.csv")
write.csv(kor_x9,"korelasi x9.csv")







