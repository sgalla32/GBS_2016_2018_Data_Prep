#Used this for unique barcode genertor
Java -jar “location_of_GBSX_Releasess/GBSX_v1.0.jar” --BarcodeGenerator -b 141 -e ApeKI > 141barcodes.txt  

#Place 141barcodes.txt in a folder with all interleaved fastq files. 
Perl mux_barcodes.pl 96barcodes.txt ./
