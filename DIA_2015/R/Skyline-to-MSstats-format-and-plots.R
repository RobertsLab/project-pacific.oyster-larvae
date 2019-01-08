library(MSstats)

#Script roughly follows:
#Yaamini's MSStats script: https://github.com/RobertsLab/project-oyster-oa/blob/master/analyses/DNR_Skyline_20170524/2017-06-22-MSstats/2017-06-22-MSstats.R

#MSstats manual (starting p44):http://msstats.org/wp-content/uploads/2017/01/MSstats_v3.7.3_manual.pdf

# IMPORT AND PROCESS DATA 

#read in .csv Skyline report from: http://owl.fish.washington.edu/scaphapoda/grace/2015-Cgseed-DIA/post-EncyclopeDIA-Skyline/20181214-SkytoMSstats-report.csv 
# File is too large to upload to GitHub

rawPeakAreas <- read.csv("http://owl.fish.washington.edu/scaphapoda/grace/2015-Cgseed-DIA/post-EncyclopeDIA-Skyline/20181214-SkytoMSstats-report.csv")

head(rawPeakAreas)

#rename columns 
names(rawPeakAreas) <- c("ProteinName", "PeptideSequence", "PeptideModifiedSequence", "PrecursorCharge", "PrecursorMz", "FragmentIon", "ProductCharge", "ProductMz", "IsotopeLabelType", "Condition", "BioReplicate", "FileName", "Area", "StandardType", "Truncated", "DetectionQValue")

head(rawPeakAreas)

#convert raw Skyline output to MSstats format
#rawPeakAreas has 563192 obs and 16 variables
PeakAreas <- SkylinetoMSstatsFormat(rawPeakAreas)

# PeakAreas has 152980 obs, and 15 variables
#Output message: 
#** Peptides, that are used in more than one proteins, are removed.
#** Intensities with great than 0.01 in DetectionQValue are replaced with zero.
#** 6 features have all NAs or zero intensity values and are removed.
#** 818 features have 1 or 2 intensities across runs and are removed.
#Warning message:
 # In SkylinetoMSstatsFormat(quant, annotation = NULL, removeiRT = TRUE,  :
                              #NAs introduced by coercion

head(PeakAreas)

# Process data
QuantData <- dataProcess(PeakAreas, normalization='equalizeMedians',
                         summaryMethod="TMP",
                         cutoffCensored="minFeature", censoredInt="0",
                         MBimpute=TRUE,
                         maxQuantileforCensored=0.999)
#Error message: 
#** There are 4379 intensities which are zero or less than 1. These intensities are replaced with 1.
#Error in dataProcess(PeakAreas) : 
  #** MSstats suspects that there are fractionations and potentially technical replicates too. Please add Fraction column in the input.

#Add fraction column and have all cells listed as "1" from this google forum post: https://groups.google.com/forum/#!searchin/msstats/fractionations%7Csort:date/msstats/dVh6IEE0xTE/jiokWrNSCgAJ
PeakAreas$Fraction <- "1"

#Re-try the dataProcess function
QuantData <- dataProcess(PeakAreas)
# Large list (5 elements, 82.7 Mb)

#After it's all done, check what the ProcessedData looks like
head(QuantData$ProcessedData)

# Create dataprocess plots
dataProcessPlots(data = QuantData, type = "ProfilePlot")
dataProcessPlots(data = QuantData, type = "QCPlot")

# CREATE CONTRAST MATRIX

levels(QuantData$ProcessedData$GROUP_ORIGINAL) #Levels: "23C" and "29C"
comparison <- matrix(c(-1, 1), nrow = 1)
row.names(comparison) <- "23C-29C"

#### GROUP COMPARISON
testResultOneComparison <- groupComparison(contrast.matrix = comparison, data = QuantData) 
testResultOneComparison$ComparisonResult #View results
proteinComparisonResults <- testResultOneComparison$ComparisonResult #Save as new dataframe
write.csv(proteinComparisonResults, "DIA_2015/analyses/20181218-2015Cgseed-protcomp.csv", col.names = c("Protein", "Label", "log2FC", "SE", "Tvalue", "DF", "pvalue"), row.names = F) #Write out data frame

# GROUP COMPARISON PLOTS
groupComparisonPlots(data = proteinComparisonResults, type = "VolcanoPlot") #Volcano plot, alpha = 0.05.
#null device 
#1 
#There were 17 warnings (use warnings() to see them)
groupComparisonPlots(data = proteinComparisonResults, type = "ComparisonPlot") #Comparison plot, alpha = 0.05
#output for Comparison PLot warning:
#null device 
#1 
#There were 17 warnings (use warnings() to see them)