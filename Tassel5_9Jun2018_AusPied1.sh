#!/bin/sh

'/home/stephanie/Desktop/Rogers_Tassel_Modifications/tassel5-TEGenzymes.v2/tassel5-src/run_pipeline.pl' -Xmx16G -fork1 -GBSSeqToTagDBPlugin -e ApeKI -i '/media/stephanie/Data/GBS/Tassel5/Tassel5_9June2018_AusPied/' -db '/media/stephanie/Data/GBS/Tassel5/Tassel5_9June2018_AusPied/2016_2018_100bpTrimming_AusPied.db' -k '/media/stephanie/Data/GBS/Tassel5/Tassel5_9June2018_AusPied/keyfile.barcoded.txt' -kmerLength 64 -minKmerL 20 -mnQS 20 -mxKmerNum 100000000 -endPlugin -runfork1 

'/home/stephanie/Desktop/Rogers_Tassel_Modifications/tassel5-TEGenzymes.v2/tassel5-src/run_pipeline.pl' -Xmx16G -fork1 -TagExportToFastqPlugin -db '/media/stephanie/Data/GBS/Tassel5/Tassel5_9June2018_AusPied/2016_2018_100bpTrimming_AusPied.db' -o '/media/stephanie/Data/GBS/Tassel5/Tassel5_9June2018_AusPied/tagsForAlign.fa.gz' -c 1 -endPlugin -runfork1 

bwa aln -t4 '/media/stephanie/Data/Genomes/AusPiedGenomes/Aus1_Concat/Aus1_superscaff_chromosome1.fasta' '/media/stephanie/Data/GBS/Tassel5/Tassel5_9June2018_AusPied/tagsForAlign.fa.gz' > '/media/stephanie/Data/GBS/Tassel5/Tassel5_9June2018_AusPied/tagsForAlign.sai' 

bwa samse '/media/stephanie/Data/Genomes/AusPiedGenomes/Aus1_Concat/Aus1_superscaff_chromosome1.fasta' '/media/stephanie/Data/GBS/Tassel5/Tassel5_9June2018_AusPied/tagsForAlign.sai' '/media/stephanie/Data/GBS/Tassel5/Tassel5_9June2018_AusPied/tagsForAlign.fa.gz' > '/media/stephanie/Data/GBS/Tassel5/Tassel5_9June2018_AusPied/tagsForAlign.sam' 

'/home/stephanie/Desktop/Rogers_Tassel_Modifications/tassel5-TEGenzymes.v2/tassel5-src/run_pipeline.pl' -Xmx16G -fork1 -SAMToGBSdbPlugin -i '/media/stephanie/Data/GBS/Tassel5/Tassel5_9June2018_AusPied/tagsForAlign.sam' -db '/media/stephanie/Data/GBS/Tassel5/Tassel5_9June2018_AusPied/2016_2018_100bpTrimming_AusPied.db' -aProp 0.0 -aLen 0 -endPlugin -runfork1 

'/home/stephanie/Desktop/Rogers_Tassel_Modifications/tassel5-TEGenzymes.v2/tassel5-src/run_pipeline.pl' -Xmx16G -fork1 -DiscoverySNPCallerPluginV2 -db '/media/stephanie/Data/GBS/Tassel5/Tassel5_9June2018_AusPied/2016_2018_100bpTrimming_AusPied.db' -sC 1 -eC 1 -mnLCov 0.1 -mnMAF 0.05 -deleteOldData true -endPlugin -runfork1 

'/home/stephanie/Desktop/Rogers_Tassel_Modifications/tassel5-TEGenzymes.v2/tassel5-src/run_pipeline.pl' -Xmx16G -fork1 -ProductionSNPCallerPluginV2 -db '/media/stephanie/Data/GBS/Tassel5/Tassel5_9June2018_AusPied/2016_2018_100bpTrimming_AusPied.db' -e ApeKI -i '/media/stephanie/Data/GBS/Tassel5/Tassel5_9June2018_AusPied' -k '/media/stephanie/Data/GBS/Tassel5/Tassel5_9June2018_AusPied/keyfile.barcoded.txt' -kmerLength 64 -o '/media/stephanie/Data/GBS/Tassel5/Tassel5_9June2018_AusPied/GBS_2016_2018_9June2018_AusPied.vcf' -endPlugin -runfork1 

