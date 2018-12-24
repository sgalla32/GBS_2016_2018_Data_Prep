# GBS_2016_2018_Data_Prep

These scripts are used for processing the 2016 and 2018 GBS datasets.  

1) Axe_demux_2016_2018.sh was used to trim and demultiplex reads. 
2) Fastqc_GBS_Data_Raw2016_2018.sh was used to run FastQC on all raw reads.
3) Skewer_GBS_2016_2018.sh was used to trim reads.
4) Velvet_GBS_2016_2018.sh was used to interleave forward and reverse reads. 
5) GBSX_MuxBarcodes.sh was used to generate barcodes and append them to interleaved reads. 
6) Tassel5 shell scripts was used to discover SNPs. 
7) VCFTools_BCFTools_GBS.sh was used to filter SNPs. 

