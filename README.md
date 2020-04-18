# CyTOF_data_analysis

A pipeline for analyzing CyTOF data using Python.
The data used in for the analysis presented here is from the following manuscript:

Michelle Miron, Brahma V. Kumar, Wenzhao Meng, Tomer Granot, Dustin J. Carpenter, Takashi Senda, Dora Chen, Aaron M. Rosenfeld, Bochao Zhang, Harvey Lerner, Amy L. Friedman, Uri Hershberg, Yufeng Shen, Adeeb Rahman, Eline T. Luning Prak, Donna L. Farber. The Journal of Immunology August 15, 2018, ji1800716; DOI: 10.4049/jimmunol.1800716 

I have uploaded some of the file in the data folder.
**NOTE:** I could not upload the data file for D333 LLN (which is included in the samle analysis) due to file size restrictions.

The full dataset can be downloaded from the Immport website:
https://immport.org/shared/home

## Part1 :- Read in and subsample CyTOF data
**Open the fcs files within Python and merges the files in a single step w/o having to open the files in FCS Express or Flowjo.**

## Part 2:- Data transformation and dimensionality reduction
**Arcsin transform the data and run dimensionality reduction using TSNE and UMAP. Then run Louvain clustering to identify cluster of cells**

https://github.com/pranaydogra/CyTOF_data_analysis/blob/master/part2.tif

## Part3:- Identification of cell clusters of interest
**Generate heatmaps and ridgeplots to identify cell clusters of interest**

https://github.com/pranaydogra/CyTOF_data_analysis/blob/master/part3.tif

## Part 4:- Subset data based on clusters of interest

After selecting the cell clusters steps 2 - 4 can be re-run for a more detailed analysis of the cell subsets of interest
