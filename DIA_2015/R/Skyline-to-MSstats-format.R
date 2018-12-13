library(MSstats)

#read in .csv Skyline report from: http://owl.fish.washington.edu/scaphapoda/grace/2015-Cgseed-DIA/post-EncyclopeDIA-Skyline/20181213-SkytoMSstats-report.csv 
# file is larger than 100MB, can't upload to GitHub repo 

quant <- read.csv("http://owl.fish.washington.edu/scaphapoda/grace/2015-Cgseed-DIA/post-EncyclopeDIA-Skyline/20181213-SkytoMSstats-report.csv")

head(quant)

?SkylinetoMSstatsFormat

quant2 <- SkylinetoMSstatsFormat(quant, annotation = NULL, removeiRT = TRUE, filter_with_Qvalue = TRUE, qvalue_cutoff = 0.01, useUniquePeptide = TRUE, fewMeasurements = "remove", removeOxidationMpeptides = FALSE, removeProtein_with1Feature = FALSE)

#** Peptides, that are used in more than one proteins, are removed.
#** Intensities with great than 0.01 in DetectionQValue are replaced with zero.
#** 6 features have all NAs or zero intensity values and are removed.
#** 818 features have 1 or 2 intensities across runs and are removed.
#Warning message:
 # In SkylinetoMSstatsFormat(quant, annotation = NULL, removeiRT = TRUE,  :
                              #NAs introduced by coercion

head(quant2)
