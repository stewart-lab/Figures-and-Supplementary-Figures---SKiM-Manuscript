### DDAs and new drugs uncovered by SKiM for 22 conditions at cut-off date 
### March 2019. “D” represents the new drugs with high prediction score. 
### These are promising candidates for wet lab experiments and clinical trials.


# Set the working directory
setwd("~/march2019_22diseases/")


# load libraries
library(ggplot2)
library(ggpubr)


### Type 2 diabetes
### To read known and new predicted drugs
data_t2d <- read.table("T2D_boxPlotData_drugAndPredScore.txt", 
						header=TRUE, sep="\t", quote="")
label_t2d <- read.table("T2D_boxPlotData_label.txt", header=TRUE, quote="")
data_label_t2d <- cbind(data_t2d,label_t2d)

### To draw boxplot using ggplot2
Drugs_t2d <- as.factor(data_label_t2d$label)
Prediction_score_t2d <- as.numeric(data_label_t2d$fet_p_value_and_ratio)

### fill boxes with colors
t2d <- ggplot(data_label_t2d, 
				aes(x=Drugs_t2d, y=Prediction_score_t2d, fill=Drugs_t2d)) + 
				geom_boxplot() + 
				ylim(0,380) +
				labs(title="T2D", x="", y = "Prediction score") +
				scale_x_discrete(breaks=c("1","2"), 
									labels=c("DDAs","New drugs")) + 
				theme_classic() + 
				theme(plot.title = element_text(size=12, face="bold"), 
						axis.text.x = element_text(color = "grey20", size = 10, 
													hjust = .5, vjust = .5, 
													face = "plain"), 
						axis.text.y = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = 1, 
													vjust = 0, face = "plain"), 
						axis.title.x = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = .5, 
													vjust = 0, face = "plain"), 
						axis.title.y = element_text(color = "grey20", size = 10, 
													angle = 90, hjust = .5, 
													vjust = .5, face = "plain"), 
													legend.position="none") 

### Prediction score for 25 anti-diabetic drugs from the review paper
### change box color manually and draw line for known drug
t2d_1 <- t2d + scale_fill_manual(values=c("seagreen3", "yellow3")) + 
				geom_hline(yintercept=c(322.5575, 322.6737, 296.5203, 322.4059, 
										322.4446, 322.4683, 322.7109, 216.2801, 
										322.7779, 322.6920, 198.1317, 322.4735, 
										318.9145, 322.6572, 61.4182, 322.8962, 
										322.8535, 322.8475, 322.6402, 155.9992, 
										84.0671, 322.6063, 126.1870, 34.5427, 
										203.6919), 
							linetype="dashed", color = c("blue"), size= 0.5) +
				annotate("text", x=1, y=322, 
					label="Metformin | Glimepiride |  Glyburide | Pioglitazone |\n 
							Rosiglitazone | Acarbose | Nateglinide | Repaglinide |\n 
							Saxagliptin | Sitagliptin | Dapagliflozin | Canagliflozin |\n 
							Empagliflozin | Exenatide | Liraglutide", 
					color = "grey20", vjust=-0.1) + 
				annotate("text", x=1, y=296.5203, 
					label="Glipizide", color = "grey20", vjust=-0.5) +
				annotate("text", x=1, y=216.2801, 
					label="Miglitol", color = "grey20", vjust=-0.5) +
				annotate("text", x=1, y=198.1317, 
					label="Alogliptin", color = "grey20", vjust=-0.1) +
				annotate("text", x=1, y=318.9145, 
					label="Linagliptin", color = "grey20", vjust=0.5) +
				annotate("text", x=2, y=61.4182, 
					label="Ertugliflozin", color = "grey20", vjust=-0.5) +
				annotate("text", x=1, y=155.9992, 
					label="Dulaglutide", color = "grey20", vjust=-0.5) +
				annotate("text", x=1, y=84.0671, 
					label="Semaglutide", color = "grey20", vjust=-0.5) +
				annotate("text", x=1, y=126.1870, 
					label="Colesevelam", color = "grey20", vjust=-0.5) +
				annotate("text", x=2, y=34.5427, 
					label="Bromocriptine", color = "grey20", vjust=-0.5) +
				annotate("text", x=1, y=203.6919, 
					label="Pramlintide", color = "grey20", vjust=-0.1)


### Type 1 diabetes
### To read known and new predicted drugs
data_t1d <- read.table("T1D_boxPlotData_drugAndPredScore.txt", 
						header=TRUE, sep="\t", quote="")
label_t1d <- read.table("T1D_boxPlotData_label.txt", header=TRUE, quote="")
data_label_t1d <- cbind(data_t1d,label_t1d)

### To draw boxplot using ggplot2
Drugs_t1d <- as.factor(data_label_t1d$label)
Prediction_score_t1d <- as.numeric(data_label_t1d$fet_p_value_and_ratio)

### fill boxes with colors
t1d <- ggplot(data_label_t1d, 
				aes(x=Drugs_t1d, y=Prediction_score_t1d, fill=Drugs_t1d)) + 
				geom_boxplot() + 
				ylim(0,330) +
				labs(title="T1D", x="", y = "Prediction score") +
				scale_x_discrete(breaks=c("1","2"), 
									labels=c("DDAs","New drugs")) + 
				theme_classic() + 
				theme(plot.title = element_text(size=12, face="bold"), 
						axis.text.x = element_text(color = "grey20", size = 10, 
													hjust = .5, vjust = .5, 
													face = "plain"), 
						axis.text.y = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = 1, 
													vjust = 0, face = "plain"), 
						axis.title.x = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = .5, 
													vjust = 0, face = "plain"), 
						axis.title.y = element_text(color = "grey20", size = 10, 
													angle = 90, hjust = .5, 
													vjust = .5, face = "plain"), 
													legend.position="none")

### change box color manually and draw line for known drug
t1d_1 <- t1d + scale_fill_manual(values=c("seagreen3", "yellow3"))


### Atrial fibrillation
### To read known and new predicted drugs
data_afib <- read.table("atrial_fibrillation_boxPlotData_drugAndPredScore.txt", 
						header=TRUE, sep="\t", quote="")
label_afib <- read.table("atrial_fibrillation_boxPlotData_label.txt", 
						header=TRUE, quote="")
data_label_afib <- cbind(data_afib,label_afib)

### To draw boxplot using ggplot2
Drugs_afib <- as.factor(data_label_afib$label)
Prediction_score_afib <- as.numeric(data_label_afib$fet_p_value_and_ratio)

### fill boxes with colors
afib <- ggplot(data_label_afib, 
				aes(x=Drugs_afib, y=Prediction_score_afib, 
					fill=Drugs_afib)) + 
				geom_boxplot() + 
				ylim(0,330) +
				labs(title="Atrial fibrillation", x="", y="Prediction score") +
				scale_x_discrete(breaks=c("1","2"), 
									labels=c("DDAs","New drugs")) + 
				theme_classic() + 
				theme(plot.title = element_text(size=12, face="bold"), 
						axis.text.x = element_text(color = "grey20", size = 10, 
													hjust = .5, vjust = .5, 
													face = "plain"), 
						axis.text.y = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = 1, 
													vjust = 0, face = "plain"), 
						axis.title.x = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = .5, 
													vjust = 0, face = "plain"), 
						axis.title.y = element_text(color = "grey20", size = 10, 
													angle = 90, hjust = .5, 
													vjust = .5, face = "plain"), 
													legend.position="none")

### change box color manually and draw line for known drug
afib_1 <- afib + scale_fill_manual(values=c("seagreen3", "yellow3"))


### Bipolar disorder
### To read known and new predicted drugs
data_bipolar <- read.table("bipolar_disorder_boxPlotData_drugAndPredScore.txt", 
							header=TRUE, sep="\t", quote="")
label_bipolar <- read.table("bipolar_disorder_boxPlotData_label.txt", 
							header=TRUE, quote="")
data_label_bipolar <- cbind(data_bipolar,label_bipolar)

### To draw boxplot using ggplot2
Drugs_bipolar <- as.factor(data_label_bipolar$label)
Prediction_score_bipolar <- as.numeric(data_label_bipolar$fet_p_value_and_ratio)

### fill boxes with colors
bipolar <- ggplot(data_label_bipolar, 
				aes(x=Drugs_bipolar, y=Prediction_score_bipolar, 
					fill=Drugs_bipolar)) + 
				geom_boxplot() + 
				ylim(0,330) +
				labs(title="Bipolar disorder", x="", y="Prediction score") +
				scale_x_discrete(breaks=c("1","2"), 
									labels=c("DDAs","New drugs")) + 
				theme_classic() + 
				theme(plot.title = element_text(size=12, face="bold"), 
						axis.text.x = element_text(color = "grey20", size = 10, 
													hjust = .5, vjust = .5, 
													face = "plain"), 
						axis.text.y = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = 1, 
													vjust = 0, face = "plain"), 
						axis.title.x = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = .5, 
													vjust = 0, face = "plain"), 
						axis.title.y = element_text(color = "grey20", size = 10, 
													angle = 90, hjust = .5, 
													vjust = .5, face = "plain"), 
													legend.position="none")

### change box color manually and draw line for known drug
bipolar_1 <- bipolar + scale_fill_manual(values=c("seagreen3", "yellow3"))


### Hypercholesterolemia
### To read known and new predicted drugs
data_hyperchol <- read.table(
						"hypercholesterolemia_boxPlotData_drugAndPredScore.txt", 
						header=TRUE, sep="\t", quote="")
label_hyperchol <- read.table("hypercholesterolemia_boxPlotData_label.txt", 
						header=TRUE, quote="")
data_label_hyperchol <- cbind(data_hyperchol,label_hyperchol)

### To draw boxplot using ggplot2
Drugs_hyperchol <- as.factor(data_label_hyperchol$label)
Prediction_score_hyperchol <- as.numeric(
								data_label_hyperchol$fet_p_value_and_ratio)

### fill boxes with colors
hyperchol <- ggplot(data_label_hyperchol, 
				aes(x=Drugs_hyperchol, y=Prediction_score_hyperchol, 
					fill=Drugs_hyperchol)) + 
				geom_boxplot() + 
				ylim(0,330) +
				labs(title="Hypercholesterolemia", x="", y="Prediction score") +
				scale_x_discrete(breaks=c("1","2"), 
									labels=c("DDAs","New drugs")) + 
				theme_classic() + 
				theme(plot.title = element_text(size=12, face="bold"), 
						axis.text.x = element_text(color = "grey20", size = 10, 
													hjust = .5, vjust = .5, 
													face = "plain"), 
						axis.text.y = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = 1, 
													vjust = 0, face = "plain"), 
						axis.title.x = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = .5, 
													vjust = 0, face = "plain"), 
						axis.title.y = element_text(color = "grey20", size = 10, 
													angle = 90, hjust = .5, 
													vjust = .5, face = "plain"), 
													legend.position="none")

### change box color manually and draw line for known drug
hyperchol_1 <- hyperchol + scale_fill_manual(values=c("seagreen3", "yellow3"))


### Coronary heart disease
### To read known and new predicted drugs
data_chd <- read.table(
					"coronary_heart_disease_boxPlotData_drugAndPredScore.txt", 
					header=TRUE, sep="\t", quote="")
label_chd <- read.table("coronary_heart_disease_boxPlotData_label.txt", 
					header=TRUE, quote="")
data_label_chd <- cbind(data_chd,label_chd)

### To draw boxplot using ggplot2
Drugs_chd <- as.factor(data_label_chd$label)
Prediction_score_chd <- as.numeric(data_label_chd$fet_p_value_and_ratio)

### fill boxes with colors
chd <- ggplot(data_label_chd, 
				aes(x=Drugs_chd, y=Prediction_score_chd, fill=Drugs_chd)) + 
				geom_boxplot() + 
				ylim(0,330) +
				labs(title="CHD", x="", y = "Prediction score") +
				scale_x_discrete(breaks=c("1","2"), 
									labels=c("DDAs","New drugs")) + 
				theme_classic() + 
				theme(plot.title = element_text(size=12, face="bold"), 
						axis.text.x = element_text(color = "grey20", size = 10, 
													hjust = .5, vjust = .5, 
													face = "plain"), 
						axis.text.y = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = 1, 
													vjust = 0, face = "plain"), 
						axis.title.x = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = .5, 
													vjust = 0, face = "plain"), 
						axis.title.y = element_text(color = "grey20", size = 10, 
													angle = 90, hjust = .5, 
													vjust = .5, face = "plain"), 
													legend.position="none")

### change box color manually and draw line for known drug
chd_1 <- chd + scale_fill_manual(values=c("seagreen3", "yellow3"))


### Graves’ disease
### To read known and new predicted drugs
data_graves <- read.table("graves_disease_boxPlotData_drugAndPredScore.txt", 
							header=TRUE, sep="\t", quote="")
label_graves <- read.table("graves_disease_boxPlotData_label.txt", 
							header=TRUE, quote="")
data_label_graves <- cbind(data_graves,label_graves)

### To draw boxplot using ggplot2
Drugs_graves <- as.factor(data_label_graves$label)
Prediction_score_graves <- as.numeric(data_label_graves$fet_p_value_and_ratio)

### fill boxes with colors
graves <- ggplot(data_label_graves, 
				aes(x=Drugs_graves, y=Prediction_score_graves, 
					fill=Drugs_graves)) + 
				geom_boxplot() + 
				ylim(0,330) +
				labs(title="Grave’s disease", x="", y = "Prediction score") +
				scale_x_discrete(breaks=c("1","2"), 
									labels=c("DDAs","New drugs")) + 
				theme_classic() + 
				theme(plot.title = element_text(size=12, face="bold"), 
						axis.text.x = element_text(color = "grey20", size = 10, 
													hjust = .5, vjust = .5, 
													face = "plain"), 
						axis.text.y = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = 1, 
													vjust = 0, face = "plain"), 
						axis.title.x = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = .5, 
													vjust = 0, face = "plain"), 
						axis.title.y = element_text(color = "grey20", size = 10, 
													angle = 90, hjust = .5, 
													vjust = .5, face = "plain"), 
													legend.position="none")

### change box color manually and draw line for known drug
graves_1 <- graves + scale_fill_manual(values=c("seagreen3", "yellow3"))


### Myocardial infarction
### To read known and new predicted drugs
data_mi <- read.table("myocardial_infarction_boxPlotData_drugAndPredScore.txt", 
						header=TRUE, sep="\t", quote="")
label_mi <- read.table("myocardial_infarction_boxPlotData_label.txt", 
						header=TRUE, quote="")
data_label_mi <- cbind(data_mi,label_mi)

### To draw boxplot using ggplot2
Drugs_mi <- as.factor(data_label_mi$label)
Prediction_score_mi <- as.numeric(data_label_mi$fet_p_value_and_ratio)

### fill boxes with colors
mi <- ggplot(data_label_mi, 
				aes(x=Drugs_mi, y=Prediction_score_mi, fill=Drugs_mi)) + 
				geom_boxplot() + 
				ylim(0,330) +
				labs(title="Myocardial infarction", x="", y="Prediction score") +
				scale_x_discrete(breaks=c("1","2"), 
									labels=c("DDAs","New drugs")) + 
				theme_classic() + 
				theme(plot.title = element_text(size=12, face="bold"), 
						axis.text.x = element_text(color = "grey20", size = 10, 
													hjust = .5, vjust = .5, 
													face = "plain"), 
						axis.text.y = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = 1, 
													vjust = 0, face = "plain"), 
						axis.title.x = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = .5, 
													vjust = 0, face = "plain"), 
						axis.title.y = element_text(color = "grey20", size = 10, 
													angle = 90, hjust = .5, 
													vjust = .5, face = "plain"), 
													legend.position="none")

### change box color manually and draw line for known drug
mi_1 <- mi + scale_fill_manual(values=c("seagreen3", "yellow3"))


### Parkinson’s disease
### To read known and new predicted drugs
data_pd <- read.table("parkinsons_disease_boxPlotData_drugAndPredScore.txt", 
						header=TRUE, sep="\t", quote="")
label_pd <- read.table("parkinsons_disease_boxPlotData_label.txt", 
						header=TRUE, quote="")
data_label_pd <- cbind(data_pd,label_pd)

### To draw boxplot using ggplot2
Drugs_pd <- as.factor(data_label_pd$label)
Prediction_score_pd <- as.numeric(data_label_pd$fet_p_value_and_ratio)

### fill boxes with colors
pd <- ggplot(data_label_pd, 
				aes(x=Drugs_pd, y=Prediction_score_pd, fill=Drugs_pd)) + 
				geom_boxplot() + 
				ylim(0,330) +
				labs(title="Parkinson’s disease", x="", y="Prediction score") +
				scale_x_discrete(breaks=c("1","2"), 
									labels=c("DDAs","New drugs")) + 
				theme_classic() + 
				theme(plot.title = element_text(size=12, face="bold"), 
						axis.text.x = element_text(color = "grey20", size = 10, 
													hjust = .5, vjust = .5, 
													face = "plain"), 
						axis.text.y = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = 1, 
													vjust = 0, face = "plain"), 
						axis.title.x = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = .5, 
													vjust = 0, face = "plain"), 
						axis.title.y = element_text(color = "grey20", size = 10, 
													angle = 90, hjust = .5, 
													vjust = .5, face = "plain"), 
													legend.position="none")

### change box color manually and draw line for known drug
pd_1 <- pd + scale_fill_manual(values=c("seagreen3", "yellow3"))


### Psoriasis
### To read known and new predicted drugs
data_pso <- read.table("psoriasis_boxPlotData_drugAndPredScore.txt", 
						header=TRUE, sep="\t", quote="")
label_pso <- read.table("psoriasis_boxPlotData_label.txt", 
						header=TRUE, quote="")
data_label_pso <- cbind(data_pso,label_pso)

### To draw boxplot using ggplot2
Drugs_pso <- as.factor(data_label_pso$label)
Prediction_score_pso <- as.numeric(data_label_pso$fet_p_value_and_ratio)

### fill boxes with colors
pso <- ggplot(data_label_pso, 
				aes(x=Drugs_pso, y=Prediction_score_pso, fill=Drugs_pso)) + 
				geom_boxplot() + 
				ylim(0,330) +
				labs(title="Psoriasis", x="", y = "Prediction score") +
				scale_x_discrete(breaks=c("1","2"), 
									labels=c("DDAs","New drugs")) + 
				theme_classic() + 
				theme(plot.title = element_text(size=12, face="bold"), 
						axis.text.x = element_text(color = "grey20", size = 10, 
													hjust = .5, vjust = .5, 
													face = "plain"), 
						axis.text.y = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = 1, 
													vjust = 0, face = "plain"), 
						axis.title.x = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = .5, 
													vjust = 0, face = "plain"), 
						axis.title.y = element_text(color = "grey20", size = 10, 
													angle = 90, hjust = .5, 
													vjust = .5, face = "plain"), 
													legend.position="none")

### change box color manually and draw line for known drug
pso_1 <- pso + scale_fill_manual(values=c("seagreen3", "yellow3"))


### Congestive heart failure
### To read known and new predicted drugs
data_chf <- read.table(
				"congestive_heart_failure_boxPlotData_drugAndPredScore.txt", 
				header=TRUE, sep="\t", quote="")
label_chf <- read.table("congestive_heart_failure_boxPlotData_label.txt", 
				header=TRUE, quote="")
data_label_chf <- cbind(data_chf,label_chf)

### To draw boxplot using ggplot2
Drugs_chf <- as.factor(data_label_chf$label)
Prediction_score_chf <- as.numeric(data_label_chf$fet_p_value_and_ratio)

### fill boxes with colors
chf <- ggplot(data_label_chf, 
				aes(x=Drugs_chf, y=Prediction_score_chf, fill=Drugs_chf)) + 
				geom_boxplot() + 
				ylim(0,330) +
				labs(title="CHF", x="", y = "Prediction score") +
				scale_x_discrete(breaks=c("1","2"), 
									labels=c("DDAs","New drugs")) + 
				theme_classic() + 
				theme(plot.title = element_text(size=12, face="bold"), 
						axis.text.x = element_text(color = "grey20", size = 10, 
													hjust = .5, vjust = .5, 
													face = "plain"), 
						axis.text.y = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = 1, 
													vjust = 0, face = "plain"), 
						axis.title.x = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = .5, 
													vjust = 0, face = "plain"), 
						axis.title.y = element_text(color = "grey20", size = 10, 
													angle = 90, hjust = .5, 
													vjust = .5, face = "plain"), 
													legend.position="none")

### change box color manually and draw line for known drug
chf_1 <- chf + scale_fill_manual(values=c("seagreen3", "yellow3"))


### Chronic obstructive pulmonary disease
### To read known and new predicted drugs
data_copd <- read.table(
		"chronic_obstructive_pulmonary_disease_boxPlotData_drugAndPredScore.txt", 
		header=TRUE, sep="\t", quote="")
label_copd <- read.table(
		"chronic_obstructive_pulmonary_disease_boxPlotData_label.txt", 
		header=TRUE, quote="")
data_label_copd <- cbind(data_copd,label_copd)

### To draw boxplot using ggplot2
Drugs_copd <- as.factor(data_label_copd$label)
Prediction_score_copd <- as.numeric(data_label_copd$fet_p_value_and_ratio)

### fill boxes with colors
copd <- ggplot(data_label_copd, 
				aes(x=Drugs_copd, y=Prediction_score_copd, fill=Drugs_copd)) + 
				geom_boxplot() + 
				ylim(0,330) +
				labs(title="COPD", x="", y = "Prediction score") +
				scale_x_discrete(breaks=c("1","2"), 
									labels=c("DDAs","New drugs")) + 
				theme_classic() + 
				theme(plot.title = element_text(size=12, face="bold"), 
						axis.text.x = element_text(color = "grey20", size = 10, 
													hjust = .5, vjust = .5, 
													face = "plain"), 
						axis.text.y = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = 1, 
													vjust = 0, face = "plain"), 
						axis.title.x = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = .5, 
													vjust = 0, face = "plain"), 
						axis.title.y = element_text(color = "grey20", size = 10, 
													angle = 90, hjust = .5, 
													vjust = .5, face = "plain"), 
													legend.position="none")

### change box color manually and draw line for known drug
copd_1 <- copd + scale_fill_manual(values=c("seagreen3", "yellow3"))


### Emphysema
### To read known and new predicted drugs
data_emphysema <- read.table("emphysema_boxPlotData_drugAndPredScore.txt", 
								header=TRUE, sep="\t", quote="")
label_emphysema <- read.table("emphysema_boxPlotData_label.txt", 
								header=TRUE, quote="")
data_label_emphysema <- cbind(data_emphysema,label_emphysema)

### To draw boxplot using ggplot2
Drugs_emphysema <- as.factor(data_label_emphysema$label)
Prediction_score_emphysema <- as.numeric(
								data_label_emphysema$fet_p_value_and_ratio)

### fill boxes with colors
emphysema <- ggplot(data_label_emphysema, 
				aes(x=Drugs_emphysema, y=Prediction_score_emphysema, 
					fill=Drugs_emphysema)) + 
				geom_boxplot() + 
				ylim(0,330) +
				labs(title="Emphysema", x="", y = "Prediction score") +
				scale_x_discrete(breaks=c("1","2"), 
									labels=c("DDAs","New drugs")) + 
				theme_classic() + 
				theme(plot.title = element_text(size=12, face="bold"), 
						axis.text.x = element_text(color = "grey20", size = 10, 
													hjust = .5, vjust = .5, 
													face = "plain"), 
						axis.text.y = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = 1, 
													vjust = 0, face = "plain"), 
						axis.title.x = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = .5, 
													vjust = 0, face = "plain"), 
						axis.title.y = element_text(color = "grey20", size = 10, 
													angle = 90, hjust = .5, 
													vjust = .5, face = "plain"), 
													legend.position="none")

### change box color manually and draw line for known drug
emphysema_1 <- emphysema + scale_fill_manual(values=c("seagreen3", "yellow3"))


### Asthma
### To read known and new predicted drugs
data_asthma <- read.table("asthma_boxPlotData_drugAndPredScore.txt", 
							header=TRUE, sep="\t", quote="")
label_asthma <- read.table("asthma_boxPlotData_label.txt", 
							header=TRUE, quote="")
data_label_asthma <- cbind(data_asthma,label_asthma)

### To draw boxplot using ggplot2
Drugs_asthma <- as.factor(data_label_asthma$label)
Prediction_score_asthma <- as.numeric(data_label_asthma$fet_p_value_and_ratio)

### fill boxes with colors
asthma <- ggplot(data_label_asthma, 
				aes(x=Drugs_asthma, y=Prediction_score_asthma, 
					fill=Drugs_asthma)) + 
				geom_boxplot() + 
				ylim(0,330) +
				labs(title="Asthma", x="", y = "Prediction score") +
				scale_x_discrete(breaks=c("1","2"), 
									labels=c("DDAs","New drugs")) + 
				theme_classic() + 
				theme(plot.title = element_text(size=12, face="bold"), 
						axis.text.x = element_text(color = "grey20", size = 10, 
													hjust = .5, vjust = .5, 
													face = "plain"), 
						axis.text.y = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = 1, 
													vjust = 0, face = "plain"), 
						axis.title.x = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = .5, 
													vjust = 0, face = "plain"), 
						axis.title.y = element_text(color = "grey20", size = 10, 
													angle = 90, hjust = .5, 
													vjust = .5, face = "plain"), 
													legend.position="none")

### change box color manually and draw line for known drug
asthma_1 <- asthma + scale_fill_manual(values=c("seagreen3", "yellow3"))


### Stroke
### To read known and new predicted drugs
data_stroke <- read.table("stroke_boxPlotData_drugAndPredScore.txt", 
							header=TRUE, sep="\t", quote="")
label_stroke <- read.table("stroke_boxPlotData_label.txt", 
							header=TRUE, quote="")
data_label_stroke <- cbind(data_stroke,label_stroke)

### To draw boxplot using ggplot2
Drugs_stroke <- as.factor(data_label_stroke$label)
Prediction_score_stroke <- as.numeric(data_label_stroke$fet_p_value_and_ratio)

### fill boxes with colors
stroke <- ggplot(data_label_stroke, 
				aes(x=Drugs_stroke, y=Prediction_score_stroke, 
					fill=Drugs_stroke)) + 
				geom_boxplot() + 
				ylim(0,330) +
				labs(title="Stroke", x="", y = "Prediction score") +
				scale_x_discrete(breaks=c("1","2"), 
									labels=c("DDAs","New drugs")) + 
				theme_classic() + 
				theme(plot.title = element_text(size=12, face="bold"), 
						axis.text.x = element_text(color = "grey20", size = 10, 
													hjust = .5, vjust = .5, 
													face = "plain"), 
						axis.text.y = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = 1, 
													vjust = 0, face = "plain"), 
						axis.title.x = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = .5, 
													vjust = 0, face = "plain"), 
						axis.title.y = element_text(color = "grey20", size = 10, 
													angle = 90, hjust = .5, 
													vjust = .5, face = "plain"), 
													legend.position="none")

### change box color manually and draw line for known drug
stroke_1 <- stroke + scale_fill_manual(values=c("seagreen3", "yellow3"))


### Influenza
### To read known and new predicted drugs
data_inf <- read.table("influenza_boxPlotData_drugAndPredScore.txt", 
						header=TRUE, sep="\t", quote="")
label_inf <- read.table("influenza_boxPlotData_label.txt", 
						header=TRUE, quote="")
data_label_inf <- cbind(data_inf,label_inf)

### To draw boxplot using ggplot2
Drugs_inf <- as.factor(data_label_inf$label)
Prediction_score_inf <- as.numeric(data_label_inf$fet_p_value_and_ratio)

### fill boxes with colors
inf <- ggplot(data_label_inf, 
				aes(x=Drugs_inf, y=Prediction_score_inf, fill=Drugs_inf)) + 
				geom_boxplot() + 
				ylim(0,330) +
				labs(title="Influenza", x="", y = "Prediction score") +
				scale_x_discrete(breaks=c("1","2"), 
									labels=c("DDAs","New drugs")) + 
				theme_classic() + 
				theme(plot.title = element_text(size=12, face="bold"), 
						axis.text.x = element_text(color = "grey20", size = 10, 
													hjust = .5, vjust = .5, 
													face = "plain"), 
						axis.text.y = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = 1, 
													vjust = 0, face = "plain"), 
						axis.title.x = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = .5, 
													vjust = 0, face = "plain"), 
						axis.title.y = element_text(color = "grey20", size = 10, 
													angle = 90, hjust = .5, 
													vjust = .5, face = "plain"), 
													legend.position="none")

### change box color manually and draw line for known drug
inf_1 <- inf + scale_fill_manual(values=c("seagreen3", "yellow3"))


### Pneumonia
### To read known and new predicted drugs
data_pne <- read.table("pneumonia_boxPlotData_drugAndPredScore.txt", 
						header=TRUE, sep="\t", quote="")
label_pne <- read.table("pneumonia_boxPlotData_label.txt", 
						header=TRUE, quote="")
data_label_pne <- cbind(data_pne,label_pne)

### To draw boxplot using ggplot2
Drugs_pne <- as.factor(data_label_pne$label)
Prediction_score_pne <- as.numeric(data_label_pne$fet_p_value_and_ratio)

### fill boxes with colors
pne <- ggplot(data_label_pne, 
				aes(x=Drugs_pne, y=Prediction_score_pne, fill=Drugs_pne)) + 
				geom_boxplot() + 
				ylim(0,330) +
				labs(title="Pneumonia", x="", y = "Prediction score") +
				scale_x_discrete(breaks=c("1","2"), 
									labels=c("DDAs","New drugs")) + 
				theme_classic() + 
				theme(plot.title = element_text(size=12, face="bold"), 
						axis.text.x = element_text(color = "grey20", size = 10, 
													hjust = .5, vjust = .5, 
													face = "plain"), 
						axis.text.y = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = 1, 
													vjust = 0, face = "plain"), 
						axis.title.x = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = .5, 
													vjust = 0, face = "plain"), 
						axis.title.y = element_text(color = "grey20", size = 10, 
													angle = 90, hjust = .5, 
													vjust = .5, face = "plain"), 
													legend.position="none")

### change box color manually and draw line for known drug
pne_1 <- pne + scale_fill_manual(values=c("seagreen3", "yellow3"))


### Chronic kidney disease
### To read known and new predicted drugs
data_ckd <- read.table(
				"chronic_kidney_disease_boxPlotData_drugAndPredScore.txt", 
				header=TRUE, sep="\t", quote="")
label_ckd <- read.table("chronic_kidney_disease_boxPlotData_label.txt", 
				header=TRUE, quote="")
data_label_ckd <- cbind(data_ckd,label_ckd)

### To draw boxplot using ggplot2
Drugs_ckd <- as.factor(data_label_ckd$label)
Prediction_score_ckd <- as.numeric(data_label_ckd$fet_p_value_and_ratio)

### fill boxes with colors
ckd <- ggplot(data_label_ckd, 
				aes(x=Drugs_ckd, y=Prediction_score_ckd, fill=Drugs_ckd)) + 
				geom_boxplot() + 
				ylim(0,330) +
				labs(title="CKD", x="", y = "Prediction score") +
				scale_x_discrete(breaks=c("1","2"), 
									labels=c("DDAs","New drugs")) + 
				theme_classic() + 
				theme(plot.title = element_text(size=12, face="bold"), 
						axis.text.x = element_text(color = "grey20", size = 10, 
													hjust = .5, vjust = .5, 
													face = "plain"), 
						axis.text.y = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = 1, 
													vjust = 0, face = "plain"), 
						axis.title.x = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = .5, 
													vjust = 0, face = "plain"), 
						axis.title.y = element_text(color = "grey20", size = 10, 
													angle = 90, hjust = .5, 
													vjust = .5, face = "plain"), 
													legend.position="none")

### change box color manually and draw line for known drug
ckd_1 <- ckd + scale_fill_manual(values=c("seagreen3", "yellow3"))


### Kidney failure
### To read known and new predicted drugs
data_kf <- read.table("kidney_failure_boxPlotData_drugAndPredScore.txt", 
						header=TRUE, sep="\t", quote="")
label_kf <- read.table("kidney_failure_boxPlotData_label.txt", 
						header=TRUE, quote="")
data_label_kf <- cbind(data_kf,label_kf)

### To draw boxplot using ggplot2
Drugs_kf <- as.factor(data_label_kf$label)
Prediction_score_kf <- as.numeric(data_label_kf$fet_p_value_and_ratio)

### fill boxes with colors
kf <- ggplot(data_label_kf, 
				aes(x=Drugs_kf, y=Prediction_score_kf, fill=Drugs_kf)) + 
				geom_boxplot() + 
				ylim(0,330) +
				labs(title="Kidney failure", x="", y = "Prediction score") +
				scale_x_discrete(breaks=c("1","2"), 
									labels=c("DDAs","New drugs")) + 
				theme_classic() + 
				theme(plot.title = element_text(size=12, face="bold"), 
						axis.text.x = element_text(color = "grey20", size = 10, 
													hjust = .5, vjust = .5, 
													face = "plain"), 
						axis.text.y = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = 1, 
													vjust = 0, face = "plain"), 
						axis.title.x = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = .5, 
													vjust = 0, face = "plain"), 
						axis.title.y = element_text(color = "grey20", size = 10, 
													angle = 90, hjust = .5, 
													vjust = .5, face = "plain"), 
													legend.position="none")

### change box color manually and draw line for known drug
kf_1 <- kf + scale_fill_manual(values=c("seagreen3", "yellow3"))


### Suicide
### To read known and new predicted drugs
data_suicide <- read.table("suicide_boxPlotData_drugAndPredScore.txt", 
							header=TRUE, sep="\t", quote="")
label_suicide <- read.table("suicide_boxPlotData_label.txt", 
							header=TRUE, quote="")
data_label_suicide <- cbind(data_suicide,label_suicide)

### To draw boxplot using ggplot2
Drugs_suicide <- as.factor(data_label_suicide$label)
Prediction_score_suicide <- as.numeric(data_label_suicide$fet_p_value_and_ratio)

### fill boxes with colors
suicide <- ggplot(data_label_suicide, 
				aes(x=Drugs_suicide, y=Prediction_score_suicide, 
					fill=Drugs_suicide)) + 
				geom_boxplot() + 
				ylim(0,330) +
				labs(title="Suicide", x="", y = "Prediction score") +
				scale_x_discrete(breaks=c("1","2"), 
									labels=c("DDAs","New drugs")) + 
				theme_classic() + 
				theme(plot.title = element_text(size=12, face="bold"), 
						axis.text.x = element_text(color = "grey20", size = 10, 
													hjust = .5, vjust = .5, 
													face = "plain"), 
						axis.text.y = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = 1, 
													vjust = 0, face = "plain"), 
						axis.title.x = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = .5, 
													vjust = 0, face = "plain"), 
						axis.title.y = element_text(color = "grey20", size = 10, 
													angle = 90, hjust = .5, 
													vjust = .5, face = "plain"), 
													legend.position="none")

### change box color manually and draw line for known drug
suicide_1 <- suicide + scale_fill_manual(values=c("seagreen3", "yellow3"))


### Lower respiratory infections
### To read known and new predicted drugs
data_lri <- read.table(
			"lower_respiratory_infections_boxPlotData_drugAndPredScore.txt", 
			header=TRUE, sep="\t", quote="")
label_lri <- read.table("lower_respiratory_infections_boxPlotData_label.txt", 
			header=TRUE, quote="")
data_label_lri <- cbind(data_lri,label_lri)

### To draw boxplot using ggplot2
Drugs_lri <- as.factor(data_label_lri$label)
Prediction_score_lri <- as.numeric(data_label_lri$fet_p_value_and_ratio)

### fill boxes with colors
lri <- ggplot(data_label_lri, 
				aes(x=Drugs_lri, y=Prediction_score_lri, fill=Drugs_lri)) + 
				geom_boxplot() + 
				ylim(0,330) +
				labs(title="LRI", x="", y = "Prediction score") +
				scale_x_discrete(breaks=c("1","2"), 
									labels=c("DDAs","New drugs")) + 
				theme_classic() + 
				theme(plot.title = element_text(size=12, face="bold"), 
						axis.text.x = element_text(color = "grey20", size = 10, 
													hjust = .5, vjust = .5, 
													face = "plain"), 
						axis.text.y = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = 1, 
													vjust = 0, face = "plain"), 
						axis.title.x = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = .5, 
													vjust = 0, face = "plain"), 
						axis.title.y = element_text(color = "grey20", size = 10, 
													angle = 90, hjust = .5, 
													vjust = .5, face = "plain"), 
													legend.position="none")

### change box color manually and draw line for known drug
lri_1 <- lri + scale_fill_manual(values=c("seagreen3", "yellow3"))


### Tuberculosis
### To read known and new predicted drugs
data_tb <- read.table("tuberculosis_boxPlotData_drugAndPredScore.txt", 
						header=TRUE, sep="\t", quote="")
label_tb <- read.table("tuberculosis_boxPlotData_label.txt", 
						header=TRUE, quote="")
data_label_tb <- cbind(data_tb,label_tb)

### To draw boxplot using ggplot2
Drugs_tb <- as.factor(data_label_tb$label)
Prediction_score_tb <- as.numeric(data_label_tb$fet_p_value_and_ratio)

### fill boxes with colors
tb <- ggplot(data_label_tb, 
				aes(x=Drugs_tb, y=Prediction_score_tb, fill=Drugs_tb)) + 
				geom_boxplot() + 
				ylim(0,330) +
				labs(title="Tuberculosis", x="", y = "Prediction score") +
				scale_x_discrete(breaks=c("1","2"), 
									labels=c("DDAs","New drugs")) + 
				theme_classic() + 
				theme(plot.title = element_text(size=12, face="bold"), 
						axis.text.x = element_text(color = "grey20", size = 10, 
													hjust = .5, vjust = .5, 
													face = "plain"), 
						axis.text.y = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = 1, 
													vjust = 0, face = "plain"), 
						axis.title.x = element_text(color = "grey20", size = 10, 
													angle = 0, hjust = .5, 
													vjust = 0, face = "plain"), 
						axis.title.y = element_text(color = "grey20", size = 10, 
													angle = 90, hjust = .5, 
													vjust = .5, face = "plain"), 
													legend.position="none")

### change box color manually and draw line for known drug
tb_1 <- tb + scale_fill_manual(values=c("seagreen3", "yellow3"))


### combine all the plots 
row1 <- ggarrange(t1d_1, afib_1, bipolar_1, ncol = 3, nrow = 1)
row2 <- ggarrange(hyperchol_1, chd_1, graves_1, ncol = 3, nrow = 1)
row3 <- ggarrange(mi_1, pd_1, pso_1, ncol = 3, nrow = 1)
row4 <- ggarrange(chf_1, copd_1, emphysema_1, asthma_1, stroke_1, inf_1, 
					ncol = 6, nrow = 1)
row5 <- ggarrange(pne_1, ckd_1, kf_1, suicide_1, lri_1, tb_1, 
					ncol = 6, nrow = 1)

row123 <- ggarrange(row1, row2, row3, ncol = 1, nrow = 3)

col2 <- ggarrange(t2d_1, row123, ncol = 2, nrow = 1)

row45 <- ggarrange(row4, row5, ncol = 1, nrow = 2) 

all <- ggarrange(col2, row45, ncol = 1, nrow = 2, heights = c(1.85, 1.15))

plot(all)
