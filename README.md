# CyTOF data analysis

A pipeline for analyzing CyTOF data using Python.
The data used in for the analysis presented here is from the following manuscript:

Michelle Miron, Brahma V. Kumar, Wenzhao Meng, Tomer Granot, Dustin J. Carpenter, Takashi Senda, Dora Chen, Aaron M. Rosenfeld, Bochao Zhang, Harvey Lerner, Amy L. Friedman, Uri Hershberg, Yufeng Shen, Adeeb Rahman, Eline T. Luning Prak, Donna L. Farber. The Journal of Immunology August 15, 2018, ji1800716; DOI: 10.4049/jimmunol.1800716 

I have uploaded some of the data files in the Data folder.

**NOTE:** I could not upload the data file for D333 LLN (which is included in the samle analysis) due to file size restrictions.

The full dataset can be downloaded from the Immport website:
https://immport.org/shared/home

## Features include:

   1. Event subsampling
   2. Data transformation
   3. TSNE and UMAP dimensionality reduction
   4. Phenograph clusering
   5. Heatmap and ridgeplots for marker expression across clusters
   6. Sample-wise distribution of clusters: a) scatter plots, b) heatmap
   7. Bar plots for select marker expression between clusters
   8. 2x2 plots of markers: a) manually enter 2 markers, b) provide a list of markers and automatically generate a matrix

**Still to come:** Add statistics to bar plots. Subsample based on proportion instead of cell number. Color 2x2 plots based on level of expression of marker... and more.

## Part1 : Read in and subsample CyTOF data
**Open the fcs files within Python and merges the files in a single step w/o having to open the files in FCS Express or Flowjo.**

**NOTE:** I have noticed that sometimes while trying to read in the .fcs files I get a header error. Incase you get this error, run the fix_cytof_files.R script. This script opens the files in R usign the flowcore package and saves it again over writing the original file with a "fixed" file. These files then open without any issue.

## Part 2: Data transformation and dimensionality reduction
**Arcsin transform the data and run dimensionality reduction using TSNE and UMAP. Then run Louvain clustering to identify cluster of cells**

![sample_tsne_cluster_frequency](https://github.com/pranaydogra/CyTOF_data_analysis/blob/master/part2.png)

## Part3: Identification of cell clusters of interest
**Generate heatmaps and ridgeplots to identify cell clusters of interest**

![sample_heatmap_ridgeplot](https://github.com/pranaydogra/CyTOF_data_analysis/blob/master/part3.png)

## Part 4: Subset data based on clusters of interest and visualize key markers
**Generate individual dataframes for each of the cell subset and visualize expression data as 2x2 plots**

![sample_2x2_plot_matrix](https://github.com/pranaydogra/CyTOF_data_analysis/blob/master/part4.png)

## Next steps:
**After selecting the cell clusters, steps 2-4 can be re-run for a more detailed analysis of the cell subsets of interest**
