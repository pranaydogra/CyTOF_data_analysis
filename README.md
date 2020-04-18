# CyTOF_data_analysis

A pipeline for analyzing CyTOF data using Python.

## Part1 :- Read in and subsample CyTOF data
**Open the fcs files within Python and merges the files in a single step w/o having to open the files in FCS Express or Flowjo.**

## Part 2:- Data transformation and dimensionality reduction
**Arcsin transform the data and run dimensionality reduction using TSNE and UMAP. Then run Louvain clustering to identify cluster of cells**

## Part3:- Identification of cell clusters of interest
**Generate heatmaps and ridgeplots to identify cell clusters of interest**

## Part 4:- Subset data based on clusters of interest

After selecting the cell clusters steps 2 - 4 can be re-run for a more detailed analysis of the cell subsets of interest
