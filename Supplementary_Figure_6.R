### Drugs subset from various expert curated associations.


### set the working directory
setwd("PATH_OF_WORKING_DIRECTORY")

### read data
disease_drugs <- as.matrix(read.table("FILE:DISEASE_DRUG",
					colClasses="character",header=FALSE, sep="\t",quote=""))
phenotype_drugs <- as.matrix(read.table("FILE:PHENOTYPE_DRUG",
					colClasses="character",header=TRUE,sep="\t",quote=""))
gene_drugs <- as.matrix(read.table("FILE:DRUG_GENE.txt",
					colClasses="character",header=TRUE, sep="\t",quote=""))
variantANDhaplotype_drugs <- as.matrix(read.table(
					"FILE:CHEMICAL_VARIANT/HAPLOTYPE",
					colClasses="character",header=TRUE,sep="\t",quote=""))

### drug count from each resource
length(unique(disease_drugs[,2]))
[1] 5288
length(unique(phenotype_drugs[,6]))
[1] 2620
length(unique(gene_drugs[,2]))
[1] 7293
length(unique(variantANDhaplotype_drugs[,2]))
[1] 642

### common drugs between any two resources
length(intersect(unique(disease_drugs[,2]), unique(phenotype_drugs[,6])))
[1] 1575
length(intersect(unique(disease_drugs[,2]), unique(gene_drugs[,2])))
[1] 3054
length(intersect(unique(disease_drugs[,2]), unique(variantANDhaplotype_drugs[,2])))
[1] 553
length(intersect(unique(phenotype_drugs[,6]), unique(gene_drugs[,2])))
[1] 2224
length(intersect(unique(phenotype_drugs[,6]), unique(variantANDhaplotype_drugs[,2])))
[1] 388
length(intersect(unique(gene_drugs[,2]), unique(variantANDhaplotype_drugs[,2])))
[1] 594

### common drugs between any three resources
length(Reduce(intersect, list(unique(disease_drugs[,2]), unique(phenotype_drugs[,6]), unique(gene_drugs[,2]))))
[1] 1541
length(Reduce(intersect, list(unique(disease_drugs[,2]), unique(phenotype_drugs[,6]), unique(variantANDhaplotype_drugs[,2]))))
[1] 381
length(Reduce(intersect, list(unique(disease_drugs[,2]), unique(gene_drugs[,2]), unique(variantANDhaplotype_drugs[,2]))))
[1] 540
length(Reduce(intersect, list(unique(phenotype_drugs[,6]), unique(gene_drugs[,2]), unique(variantANDhaplotype_drugs[,2]))))
[1] 386

### common drugs between all resources
length(Reduce(intersect, list(unique(disease_drugs[,2]), unique(phenotype_drugs[,6]), unique(gene_drugs[,2]), unique(variantANDhaplotype_drugs[,2]))))
[1] 380

### drawing Venn diagram
library(VennDiagram)
draw.quad.venn(
				area1 = 5288, 
				area2 = 2620, 
				area3 = 7293, 
				area4 = 642,
				n12 = 1575 ,
				n13 = 3054,
				n14 = 553,
				n23 = 2224,
				n24 = 388,
				n34 = 594,
				n123 = 1541,
				n124 = 381,
				n134 = 540,
				n234 = 386,
				n1234 = 380,
				category = c("disease-drug", "phenotype-drug", 
								"gene-drug", "variant/haplotype-drug"),
				fill = c("red", "orange", "green", "blue"),
				lty = "blank",
				cex = 1.25,
				cat.cex = 1.25,
				cat.col = c("red", "orange", "green", "blue")
)
