#!/bin/sh

#Kaki GBS vcf filtering. 

vcftools --vcf Kaki_5Sept2018_RmvLowDepth.recode.vcf --min-alleles 2 --max-alleles 2 --min-meanDP 5 --max-missing 0.9 --out Kaki_5Sep2018_RmvLowDp_Biallelic_MinMeanDP5_Missing0.9 --recode

bcftools +prune -l 0.8 -w 1000 Kaki_5Sep2018_RmvLowDp_Biallelic_MinMeanDP5_Missing0.9.recode.vcf -Ov -o Kaki_5Sep2018_RmvLowDp_Biallelic_MinMeanDP5_Missing0.9_LD0.8_w1000.vcf
 
vcftools --vcf Kaki_5Sep2018_RmvLowDp_Biallelic_MinMeanDP5_Missing0.9_LD0.8_w1000.vcf --thin 65 --out Kaki_5Sep2018_RmvLowDp_Biallelic_MinMeanDP5_Missing0.9_LD0.8_w1000_thin65 --recode


#AusPied GBS vcf filtering. 

vcftools --vcf AusPied_17Aug2018_RmvLowDepth.recode.vcf --min-alleles 2 --max-alleles 2 --min-meanDP 5 --max-missing 0.9 --out AusPied_17Aug2018_RmvLowDp_Biallelic_MinMeanDP5_Missing0.9 --recode

bcftools +prune -l 0.8 -w 1000 AusPied_17Aug2018_RmvLowDp_Biallelic_MinMeanDP5_Missing0.9.recode.vcf -Ov -o AusPied_17Aug2018_RmvLowDp_Biallelic_MinMeanDP5_Missing0.9_LD0.8_w1000.vcf
 
vcftools --vcf AusPied_17Aug2018_RmvLowDp_Biallelic_MinMeanDP5_Missing0.9_LD0.8_w1000.vcf --thin 65 --out AusPied_17Aug2018_RmvLowDp_Biallelic_MinMeanDP5_Missing0.9_LD0.8_w1000_thin65 --recode

#Avocet GBS vcf filtering. 

vcftools --vcf Avocet_20Aug2018_RmvLowDepth.recode.vcf --min-alleles 2 --max-alleles 2 --min-meanDP 5 --max-missing 0.9 --out Avocet_20Aug2018_RmvLowDepth_Biallelic_MinMeanDP5_Missing0.9 --recode

bcftools +prune -l 0.8 -w 1000 Avocet_20Aug2018_RmvLowDepth_Biallelic_MinMeanDP5_Missing0.9.recode.vcf -Ov -o Avocet_20Aug2018_RmvLowDepth_Biallelic_MinMeanDP5_Missing0.9_LD0.8_w1000.vcf
 
vcftools --vcf Avocet_20Aug2018_RmvLowDepth_Biallelic_MinMeanDP5_Missing0.9_LD0.8_w1000.vcf --thin 65 --out Avocet_20Aug2018_RmvLowDepth_Biallelic_MinMeanDP5_Missing0.9_LD0.8_w1000_thin65 --recode

#Killdeer GBS vcf filtering. 

vcftools --vcf Killdeer_21Aug2018_RmvLowDepth.recode.vcf --min-alleles 2 --max-alleles 2 --min-meanDP 5 --max-missing 0.9 --out Killdeer_21Aug2018_RmvLowDepth_Biallelic_MinMeanDP5_Missing0.9 --recode

bcftools +prune -l 0.8 -w 1000 Killdeer_21Aug2018_RmvLowDepth_Biallelic_MinMeanDP5_Missing0.9.recode.vcf -Ov -o Killdeer_21Aug2018_RmvLowDepth_Biallelic_MinMeanDP5_Missing0.9_LD0.8_w1000.vcf
 
vcftools --vcf Killdeer_21Aug2018_RmvLowDepth_Biallelic_MinMeanDP5_Missing0.9_LD0.8_w1000.vcf --thin 65 --out Killdeer_21Aug2018_RmvLowDepth_Biallelic_MinMeanDP5_Missing0.9_LD0.8_w1000_thin65 --recode
