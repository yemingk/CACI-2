pacman::p_load(ggplot2, MASS, smacof, reshape2, corrplot, ggrepel, ggforce,dplyr)
df = read.csv('/Users/yemingkuai/Desktop/assignment 2/QuestionaireData_CityTrips.csv')
table(df$Sample)
df$IDrow = (1:266)
df =  df %>% relocate(IDrow, .before = Sample)
any(is.na(df[,35:36]))
#get rid of inappropriate NA values within Pref_[city]
df1 = subset(df, df$Sample==1)
colSums(is.na(df1[,37:56]))
subset(df1, is.na(df1$Pref_Geneva))
# get rid of 10, 34 because most Pref_City rates in their sample are missing
df = subset(df, IDrow!="10" & IDrow!="34")
#repeat process for sample 2
df2 = subset(df, df$Sample==2)
colSums(is.na(df2[,37:56]))
#sample 2 is already clean, now go on with sample 3-9
df3 = subset(df, df$Sample==3)
colSums(is.na(df3[,37:56]))
df4 = subset(df, df$Sample==4)
colSums(is.na(df4[,37:56]))
df5 = subset(df, df$Sample==5)
colSums(is.na(df5[,37:56]))
subset(df5, is.na(df5$Pref_Prague)) #missing values for most Pref_City
subset(df5, is.na(df5$Pref_Vienna))#same
#114, 121, 122, 131 miss most of values of Pref_city, will remove these 4 rows
df = subset(df, IDrow!="114" & IDrow!="121"& IDrow!="122"& IDrow!="131")
df6 = subset(df, df$Sample==6)
colSums(is.na(df6[,37:56]))
subset(df6, is.na(df6$Pref_Athens))
df = subset(df, IDrow!="146" & IDrow!="147")#get rid of 146, 147
df7 = subset(df, df$Sample==7)
colSums(is.na(df7[,37:56]))
subset(df7, is.na(df7$Pref_Rome))
df = subset(df, IDrow!="162" & IDrow!="168"& IDrow!="176")#get rid of 162,168
df8 = subset(df, df$Sample==8)
colSums(is.na(df8[,37:56]))
subset(df8, is.na(df8$Pref_Vienna))
df = subset(df, IDrow!="193" & IDrow!="208"& IDrow!="213")
df9 = subset(df, df$Sample==9)
colSums(is.na(df9[,37:56]))
df10 = subset(df, df$Sample==10)
colSums(is.na(df10[,37:56]))
subset(df10, is.na(df10$Pref_Istanbul))
df = subset(df, IDrow!="259" & IDrow!="261")
#in total, get rid of 10,34,114,121,122,131,146,147,162,168,176,193,208,213,259,261
#250 observations left
#now clean the attribute rating part
any(is.na(df[,57:456]))
summary(df[,57:456])
df[,57:456]




