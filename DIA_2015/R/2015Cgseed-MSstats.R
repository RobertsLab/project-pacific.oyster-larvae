# read in converted .csv from GitHub

MSstats <- read.csv("DIA_2015/analyses/20181213-MSstats-report.csv")

MSstats.2 <- dataProcess(MSstats, normalization = "equalizeMedians", summaryMethod = "TMP", cutoffCensored = "minFeature", censoredInt = "0", MBimpute = TRUE, maxQuantileforCensored = 0.999)

#** There are 4379 intensities which are zero or less than 1. These intensities are replaced with 1.
#Error in dataProcess(MSstats, normalization = "equalizeMedians", summaryMethod = "TMP",  : 
# ** MSstats suspects that there are fractionations and potentially technical replicates too. Please add Fraction column in the input.