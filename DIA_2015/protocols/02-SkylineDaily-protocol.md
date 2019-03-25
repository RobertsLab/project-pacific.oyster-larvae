# Continuation from [01-EncyclopeDIA-protocol.md](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/protocol/01-EncyclopeDIA-protocol.md)

## Step 4: Use Skyline Daily to set filters and export data
### Step 4.1 Set Peptide Settings:   
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/01-pep-settings.PNG)

![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/02-pep-settings.PNG)

### Step 4.2 Set Transition Settings:    
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/03-transition-settings.PNG)
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/04-transition-settings.PNG)
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/05-transition-settings.PNG)
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/06-transition-settings.PNG)
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/07-transition-settings.PNG)

### Step 4.3 Add Background Proteome:
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/08-add-background.PNG)
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/09-create-background.PNG)

Add .fasta used in EncyclopeDIA       
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/10-add-fasta.PNG)

Select the newly created backgorund proteome:    
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/11-select-background.PNG)

### Step 4.4a Create Library:    
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/12-library-01.PNG)

Edit list... > Add > Create name         
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/13-library-02.PNG)

Select second .elib made above (Step 3.6):    
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/14-select-elib.PNG)

Select newly made library:    
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/15-pep-settings-last-step.PNG) 

### Step 4.4b Explore Library:   
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/16-explore.PNG)

![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/17-explore-2.PNG)

Check "Associate proteins" and click "Add All..."
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/18-add-all.PNG)

After it loads for a while, a window will pop up. Select:   
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/19-include-and-add.PNG)

A final window will pop up. Click "Add All..."    
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/20-add-all-select.PNG)

Save Skyline Document!!!!     
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/21-save-skyline-doc.PNG)

### Step 4.5 Import .mzML results
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/22-import-results.PNG)

Since my samples had four .mzML files associated with each, I made sure they were all in their respective directory entitled the sample name:    
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/23-sample-sep.PNG)

I like to select "Do Not Remove", because there are only four samples:    
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/24-do-not-remove.PNG)

The .mzML files will take a while to load:   
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/25-loading-mzml.PNG)

Once it's all loaded, look at your chromatograms:     
A vast majority of peaks look like this:   
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/26-peaks.PNG)

Some have dotted-line peaks... I'm not entirely sure what this means:   
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/27-spotted-peaks.PNG)

## Step 5 Export Report (.csv):   
### Step 5.1 Select report contents to export
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/28-export-report.PNG)

![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/29-search.PNG)

Exported report contents
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/38-updated-export-report.PNG)

### Step 5.2 Remove non-quantitative chromatograms from report
The MSstats Input report is what you see if you bring up the Document Grid and choose the view "External Tools > MSstats Input".    
Then, you can bring up the Customize View dialog, and switch over to the Filter tab and add the Quantitative filter as shown in this screenshot.        
Quantitative is under "Proteins > Peptides > Precursors > Transitions" if your search button is not working.
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/32-1212-edit-report-non-quant-not-incl.PNG)

### Step 5.3 Add condition and bioreplicate 
Follow the older version of the DIA protocol: [Step 4g](https://github.com/RobertsLab/resources/blob/master/protocols/DIA-data-Analyses.md#step-4g-add-condition-and-bioreplicate-information-optional)

Adding conditon (23C or 29C)    
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/36-add-23c-29c.PNG)

Set bioreplicates:    
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/39-new-biorep.PNG)

### Step 5.4 Export and save report
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/skyline-images/30-save-report.PNG)

