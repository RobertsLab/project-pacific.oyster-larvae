Use Galaxy to BLASTp the Skyline results with the proteome (link) used in DIA analysis. 

Materials needed:   
1. Newest uniprot-swprot.fasta: [http://gannet.fish.washington.edu/metacarcinus/Cgigas/uniprot_swprot2019_01.fasta](http://gannet.fish.washington.edu/metacarcinus/Cgigas/uniprot_swprot2019_01.fasta)
2. Proteome used in the DIA analysis: [http://owl.fish.washington.edu/scaphapoda/grace/2015-Cgseed-DIA/fasta/Cg_Giga_cont_prtc_AA.fasta](http://owl.fish.washington.edu/scaphapoda/grace/2015-Cgseed-DIA/fasta/Cg_Giga_cont_prtc_AA.fasta)
3. Galaxy: [https://usegalaxy.org](https://usegalaxy.org)

### Step 1: Create database from uniprot-swprot fasta
1. Upload the new uniprot-swissprot fasta    
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/Galaxy-images/001_Galaxy-upload.png)

![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/Galaxy-images/002-Galaxy-uploadfasta.png)

2. Make a BLAST database      
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/Galaxy-images/003-Galaxy-make-blastdb.png)   

3. Upload the [Cg_Giga_cont_prtc_AA.fasta](http://owl.fish.washington.edu/scaphapoda/grace/2015-Cgseed-DIA/fasta/Cg_Giga_cont_prtc_AA.fasta) and run BLASTp against the database made in step 2    
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/Galaxy-images/01-Galaxy-startBLASTp.png)

BLAST will run for a while     
![img](https://github.com/RobertsLab/project-pacific.oyster-larvae/blob/master/DIA_2015/images/Galaxy-images/02-Galaxy-running-BLASTp.png)    
