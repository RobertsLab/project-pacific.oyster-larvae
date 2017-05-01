oysterproteins2016<-read.csv('/Users/rhondae/Desktop/2016DDA/Abacus_3_5_17/ABACUS_output_edited_3_5_17.csv')

silo1<-cbind(oysterproteins2016[1],oysterproteins2016[3],oystersproteins2016[11],oysterproteins2016[19],oystersproteins2016[27],oystersproteins2016[35],oystersproteins2016[43],oystersproteins2016[51])

cg.reps<-read.csv('/Users/rhondae/Desktop/2016DDA/Abacus_3_5_17/ABACUS_ADJNSAF.csv',header=T,row.names=1)

pool0<-cbind(cg.reps[2],cg.reps[3])
S2CD3<-cbind(cg.reps[4],cg.reps[5])
S3CD3<-cbind(cg.reps[6],cg.reps[7])
S9HD3<-cbind(cg.reps[8],cg.reps[9])
S2CD5<-cbind(cg.reps[10],cg.reps[11])
S3CD5<-cbind(cg.reps[12],cg.reps[13])
S9HD5<-cbind(cg.reps[14],cg.reps[15])
S2CD7<-cbind(cg.reps[16],cg.reps[17])
S3CD7<-cbind(cg.reps[18],cg.reps[19])
S9HD7<-cbind(cg.reps[20],cg.reps[21])
S2CD9<-cbind(cg.reps[22],cg.reps[23])
S3CD9<-cbind(cg.reps[24],cg.reps[25])
S9HD9<-cbind(cg.reps[26],cg.reps[27])
S2CD11<-cbind(cg.reps[28],cg.reps[29])
S3CD11<-cbind(cg.reps[30],cg.reps[31])
S9HD11<-cbind(cg.reps[32],cg.reps[33])
S2CD13<-cbind(cg.reps[34],cg.reps[35])
S3CD13<-cbind(cg.reps[36],cg.reps[37])
S9HD13<-cbind(cg.reps[38],cg.reps[39])
S2CD15<-cbind(cg.reps[40],cg.reps[41])
S3CD15<-cbind(cg.reps[42],cg.reps[43])
S9HD15<-cbind(cg.reps[44],cg.reps[45])

pool0.cv<-apply(pool0,1,cv)
S2CD3.cv<-apply(S2CD3,1,cv)
S3CD3.cv<-apply(S3CD3,1,cv)
S9HD3.cv<-apply(S9HD3,1,cv)
S2CD5.cv<-apply(S2CD5,1,cv)
S3CD5.cv<-apply(S3CD5,1,cv)
S9HD5.cv<-apply(S9HD5,1,cv)
S2CD7.cv<-apply(S2CD7,1,cv)
S3CD7.cv<-apply(S3CD7,1,cv)
S9HD7.cv<-apply(S9HD7,1,cv)
S2CD9.cv<-apply(S2CD9,1,cv)
S3CD9.cv<-apply(S3CD9,1,cv)
S9HD9.cv<-apply(S9HD9,1,cv)
S2CD11.cv<-apply(S2CD11,1,cv)
S3CD11.cv<-apply(S3CD11,1,cv)
S9HD11.cv<-apply(S9HD11,1,cv)
S2CD13.cv<-apply(S2CD13,1,cv)
S3CD13.cv<-apply(S3CD13,1,cv)
S9HD13.cv<-apply(S9HD13,1,cv)
S2CD15.cv<-apply(S2CD15,1,cv)
S3CD15.cv<-apply(S3CD15,1,cv)
S9HD15.cv<-apply(S9HD15,1,cv)

oyster.cv<-cbind(pool0.cv,S2CD3.cv,S3CD3.cv,S9HD3.cv,S2CD5.cv,S3CD5.cv,S9HD5.cv,S2CD7.cv,S3CD7.cv,S9HD7.cv,S2CD9.cv,S3CD9.cv,S9HD9.cv,S2CD11.cv,S3CD11.cv,S9HD11.cv,S2CD13.cv,S3CD13.cv,S9HD13.cv,S2CD15.cv,S3CD15.cv,S9HD15.cv)

boxplot(oyster.cv,outline=T,names=c('pool0','S2CD3','S3CD3','S9HD3','S2CD5','S3CD5','S9HD5','S2CD7','S3CD7','S9HD7','S2CD9','S3CD9','S9HD9','S2CD11','S3CD11','S9HD11','S2CD13','S3CD13','S9HD13','S2CD15','S3CD15','S9HD15'))



#NMDS
reps.t<-t(cg.reps)
reps.tra<-(reps.t+1)
reps.tra<-data.trans(reps.tra, method='log', plot=F)



library(RColorBrewer)

brewer.pal(3,'Blues')

"#DEEBF7" "#9ECAE1" "#3182BD"

brewer.pal(3,'Oranges')

"#FEE6CE" "#FDAE6B" "#E6550D"
