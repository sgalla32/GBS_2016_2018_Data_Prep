#!/bin/sh

# -m 0 added on 9 Sept 2019 after Roger informed us of an issue with how Axe handles PSTI cut sites. This command allows for no mismatches, which should resolve the glitch issue with the cut sites. 

axe-demux -b '/home/stephanie/Desktop/GBS Raw Reads/Raw_Reads_2016/ApeK1Plate1KakiKey_Repaired.txt' -c -m 0 -f '/home/stephanie/Desktop/GBS Raw Reads/Raw_Reads_2016/2264-L1-24-1_S1_L001_R1_001.fastq.gz' -r '/home/stephanie/Desktop/GBS Raw Reads/Raw_Reads_2016/2264-L1-24-1_S1_L001_R2_001.fastq.gz' -F '/home/stephanie/Desktop/GBS Raw Reads/Raw_Reads_2016/Forward' -R '/home/stephanie/Desktop/GBS_Raw_Reads/Raw_Reads_2016/Demultiplexed_Reads/Reverse' /

axe-demux -b '/media/stephanie/External4/Raw_Reads_2018/30001_Key_IDs_kaki_only.txt' -c -m 0 -f '/media/stephanie/External4/Raw_Reads_2018/CS121_R1.fq.gz' -r '/media/stephanie/External4/Raw_Reads_2018/CS121_R2.fq.gz' -F '/media/stephanie/External4/Raw_Reads_2018/Forward' -R '/media/stephanie/External4/Raw_Reads_2018/Reverse'  

