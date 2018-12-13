library(MSstats)

#read in .csv Skyline report from: http://owl.fish.washington.edu/scaphapoda/grace/2015-Cgseed-DIA/post-EncyclopeDIA-Skyline/20181213-SkytoMSstats-report.csv 
# file is larger than 100MB, can't upload to GitHub repo 

quant <- read.csv("http://owl.fish.washington.edu/scaphapoda/grace/2015-Cgseed-DIA/post-EncyclopeDIA-Skyline/20181213-SkytoMSstats-report.csv")

head(quant)

?SkylinetoMSstatsFormat



