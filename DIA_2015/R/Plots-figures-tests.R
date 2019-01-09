rawPeakAreas <- read.csv("http://owl.fish.washington.edu/scaphapoda/grace/2015-Cgseed-DIA/post-EncyclopeDIA-Skyline/20181218-SkytoMSstats-report.csv")

head(rawPeakAreas)

#rename columns 
names(rawPeakAreas) <- c("ProteinName", "PeptideSequence", "PeptideModifiedSequence", "PrecursorCharge", "PrecursorMz", "FragmentIon", "ProductCharge", "ProductMz", "IsotopeLabelType", "Condition", "BioReplicate", "FileName", "Area", "StandardType", "Truncated", "DetectionQValue", "ReplicateName")

head(rawPeakAreas)

#From: https://grace-ac.github.io/2015-DIA-Oysterseed-new-info/
#Oysterseed 01: Dec 1,3,4 and Feb 5
#Oysterseed 02: Dec 5,7,8 and Feb 6
#Oysterseed 13: Dec 9,11,12 and Feb 7
#Oysterseed 14: Dec 13,15,16 and Feb 8





                                                            
                                                            