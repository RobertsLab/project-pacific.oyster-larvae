library(MSstats)

### IMPORT AND PROCESS DATA ###

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
#** There are 4379 intensities which are zero or less than 1. These intensities are replaced with 1.
#Error in dataProcess(PeakAreas) : 
  #** MSstats suspects that there are fractionations and potentially technical replicates too. Please add Fraction column in the input.


