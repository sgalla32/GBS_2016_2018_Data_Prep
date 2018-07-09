#!/bin/sh

axe-demux -b '/home/stephanie/Desktop/GBS Raw Reads/Raw_Reads_2016/ApeK1Plate1KakiKey_Repaired.txt' -c -f '/home/stephanie/Desktop/GBS Raw Reads/Raw_Reads_2016/2264-L1-24-1_S1_L001_R1_001.fastq.gz' -r '/home/stephanie/Desktop/GBS Raw Reads/Raw_Reads_2016/2264-L1-24-1_S1_L001_R2_001.fastq.gz' -F '/home/stephanie/Desktop/GBS Raw Reads/Raw_Reads_2016/Forward' -R '/home/stephanie/Desktop/GBS_Raw_Reads/Raw_Reads_2016/Demultiplexed_Reads/Reverse' /

axe-demux -b '/media/stephanie/External4/Raw_Reads_2018/30001_Key_IDs_kaki_only.txt' -c -f '/media/stephanie/External4/Raw_Reads_2018/CS121_R1.fq.gz' -r '/media/stephanie/External4/Raw_Reads_2018/CS121_R2.fq.gz' -F '/media/stephanie/External4/Raw_Reads_2018/Forward' -R '/media/stephanie/External4/Raw_Reads_2018/Reverse'  

