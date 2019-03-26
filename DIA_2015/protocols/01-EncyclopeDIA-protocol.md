# DIA analysis
Performed on Woodpecker in FTR 209, Roberts' Lab. 

Modified from a DIA Analysis from MacCoss lab:      
[data-analysis](https://docs.google.com/document/d/1Vr3wE7Z8eJVenUWgbxJ3CmXxCoNiba_HYQXh7sNce_k/edit)

### You will need:
- MSConvert (_Windows only!_)    
[http://proteowizard.sourceforge.net/download.html](http://proteowizard.sourceforge.net/download.html)
- EncyclopeDIA suite (*.jar file):     
[https://bitbucket.org/searleb/encyclopedia/downloads/](https://bitbucket.org/searleb/encyclopedia/downloads/)  

- Raw files:        
[2015Oysterseed *.raw](http://owl.fish.washington.edu/phainopepla/C_gigas/2015-12-30/)

### Main steps:
1. Convert .raw to .mzML using MSConvert
2. Build library using Walnut in EncyclopeDIA suite
3. Use SkylineDaily (separate markdown file) 

## Step 1: Convert .raw to .mzML using MSConvert

Download .raw files from [/phainopepla/C_gigas/2015-12-30/](http://owl.fish.washington.edu/phainopepla/C_gigas/2015-12-30/)

### 1.1 Open MSConvert and set filters:     
- Peak picking     
- Click "Add"     

### 1.2 In top left, click "Browse" and navigate to directory where you put the .raw files, set output directory for .mzML files, and select all and click "Start"      
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/EncyclopeDIA-images/01-MSconvert.PNG)

### 1.3 Monitor progress in new window that pops up     
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/EncyclopeDIA-images/02-converting-to-mzML.PNG)

## Step 2: Build library using Walnut in EncyclopeDIA suite      

### 2.1 Set background and target as your fasta of interest       
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/EncyclopeDIA-images/03-walnut-add-background.PNG)    

This fasta came from (included in original [DIA protocol](https://github.com/RobertsLab/resources/blob/master/protocols/DIA-data-Analyses.md), end of Step 2):    
```
srlab@swan MINGW64 ~
$ cd Desktop/

srlab@swan MINGW64 ~/Desktop
$ cd grace/

srlab@swan MINGW64 ~/Desktop/grace
$ head Cg_Giga_cont_prtc_AA_digested_Mass400to6000.txt
Protein_Name    Sequence        Unique_ID       Monoisotopic_Mass       Predicte
d_NET   Tryptic_Name
CHOYP_043R.5.5|m.64252  SPSEDPDAPIENILQTNSVYKPK 1       2541.2598016    0.3655t2
.1
CHOYP_043R.5.5|m.64252  SPSEDPDAPIENILQTNSVYKPKK        2       2669.35475980.34
14      t2.2
CHOYP_043R.5.5|m.64252  SPSEDPDAPIENILQTNSVYKPKKEPTYDENVVVK     3       3942.973
762     0.3449  t2.3
CHOYP_043R.5.5|m.64252  SPSEDPDAPIENILQTNSVYKPKKEPTYDENVVVKIISQDTPTILR  45180.67
6764    0.5144  t2.4
CHOYP_043R.5.5|m.64252  KEPTYDENVVVK    5       1419.7245246    0.2186  t3.2
CHOYP_043R.5.5|m.64252  KEPTYDENVVVKIISQDTPTILR 6       2657.4275266    0.4593t3
.3
CHOYP_043R.5.5|m.64252  KEPTYDENVVVKIISQDTPTILRVSFTVNR  7       3460.85649280.56
58      t3.4
CHOYP_043R.5.5|m.64252  EPTYDENVVVK     8       1291.6295664    0.2301  t4.1
CHOYP_043R.5.5|m.64252  EPTYDENVVVKIISQDTPTILR  9       2529.3325684    0.4402t4
.2

srlab@swan MINGW64 ~/Desktop/grace
$ awk '{print $1,$2}' Cg_Giga_cont_prtc_AA_digested_Mass400to6000.txt | head
Protein_Name Sequence
CHOYP_043R.5.5|m.64252 SPSEDPDAPIENILQTNSVYKPK
CHOYP_043R.5.5|m.64252 SPSEDPDAPIENILQTNSVYKPKK
CHOYP_043R.5.5|m.64252 SPSEDPDAPIENILQTNSVYKPKKEPTYDENVVVK
CHOYP_043R.5.5|m.64252 SPSEDPDAPIENILQTNSVYKPKKEPTYDENVVVKIISQDTPTILR
CHOYP_043R.5.5|m.64252 KEPTYDENVVVK
CHOYP_043R.5.5|m.64252 KEPTYDENVVVKIISQDTPTILR
CHOYP_043R.5.5|m.64252 KEPTYDENVVVKIISQDTPTILRVSFTVNR
CHOYP_043R.5.5|m.64252 EPTYDENVVVK
CHOYP_043R.5.5|m.64252 EPTYDENVVVKIISQDTPTILR

srlab@swan MINGW64 ~/Desktop/grace
$ awk '{print $1,$2}' Cg_Giga_cont_prtc_AA_digested_Mass400to6000.txt \
> > Cg_Giga_cont_prtc_AA_M400-6000-2c.txt
```
And was converted to .fasta 

### 2.2 Add .mzML files that were converted in Step 1:    
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/EncyclopeDIA-images/04-walnut-add-mzml.PNG)   

And you can monitor progress of reading .mzML files:    
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/EncyclopeDIA-images/05-read-mzml-progres.PNG)

**Note:** this process creates a lot of files with different extensions (i.e., `*.dia`; `*.mzML.delta_rt.pdf`; `*.mzML.pecan.decoy.txt`; etc), but you don't need to worry about those. 

### 2.3 Save Chromatogram Library (.elib)     
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/EncyclopeDIA-images/06-save-chroma-lib.PNG)

## Step 3: Save quant files and BLIB in EncyclopeDIA     
### 3.1 Close and re-open EncylopeDIA GUI. Select .elib saved in Step 2.3 for the library        
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/EncyclopeDIA-images/07-select-elib.PNG)

### 3.2 Select background: same .fasta used in Step 2.1         
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/EncyclopeDIA-images/08-select-background-fasta.PNG)

### 3.3 Add .mzML files: same as those used in Step 2.2       
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/EncyclopeDIA-images/09-add-mzML.PNG)

### 3.4 Save Quant Reports:     
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/EncyclopeDIA-images/11-save-quant-reports.PNG)

### 3.5 Save BLIB      
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/EncyclopeDIA-images/13-save-blib.PNG)

### 3.6 Save new chromatogram Library       
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/EncyclopeDIA-images/15-saving-chrom-lib2.PNG)

### Here is what my directory contents look like with all the libraries and saved reports:    
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/EncyclopeDIA-images/17-final-contents.PNG)  


