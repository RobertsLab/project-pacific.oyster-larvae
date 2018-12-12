#read in .txt file from http://owl.fish.washington.edu/scaphapoda/grace/2015-Cgseed-DIA/EncyclopeDIA-Walnut-outputs/20181210-Cg-quant-reps.elib.peptides.txt

quantrep <- read.table("http://owl.fish.washington.edu/scaphapoda/grace/2015-Cgseed-DIA/EncyclopeDIA-Walnut-outputs/20181210-Cg-quant-reps.elib.peptides.txt", header = TRUE)


# read in Skyline report .csv
SkytoMS <- read.csv("http://owl.fish.washington.edu/scaphapoda/grace/2015-Cgseed-DIA/post-EncyclopeDIA-Skyline/20181210-SkylinetoMSStats-report.csv")

#Oysterseed_01: 
#Temp 23C
#Files:
#Dec 1
#Dec 3
#Dec 4
#Feb 5

#Oysterseed_02:
#Temp 29C
#Files:
#Dec 5
#Dec 7
#Dec 8
#Feb 6

#Oysterseed_13:
#Temp 23C
#Files:
#Dec 9
#Dec 11
#Dec 12
#Feb 7

#Oysterseed_14:
#Temp 29C
#Dec 13
#Dec 15
#Dec 16
#Feb 8

#Add column with Oysterseed_## sample name assocaited with each protein

SkytoMS <- mutate(SkytoMS, oyster_sample = ifelse(File.name == 2015_December_30_DIA_oysterseed1.mzML | File.name == 2015_December_30_DIA_oysterseed3.mzML | File.name == 2015_December_30_DIA_oysterseed4.mzML | File.name == 2016_Feb_01_DIA_oyster5.mzML, "oysterseed_01", ifelse(File.name == 2015_December_30_oysterseed15.mzML | File.name == 2015_December_30_DIA_oysterseed7.mzML | File.name == 2015_December_30_DIA_oysterseed8.mzML | File.name == 2016_Feb_01_DIA_oyster6.mzML, "oysterseed_02", ifelse(File.name == 2015_December_30_DIA_oysterseed9.mzML | File.name == 2015_December_30_DIA_oysterseed11.mzML | File.name == 2015_December_30_DIA_oysterseed12.mzML | File.name == 2016_Feb_01_DIA_oyster7.mzML, "oysterseed_13", "oysterseed_14")))) 

