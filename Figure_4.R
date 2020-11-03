### Figure 4A: Cut-off date is one year prior to Swanson's discovery

# Set the working directory
setwd("PATH_OF_WORKING_DIRECTORY")

### To draw boxplot using ggplot2
library(ggplot2)
library(ggpubr)

### Raynaud's disease
### To read known and new predicted drugs
data_r1 <- read.table("Swanson_cutoff/raynauds_syndrome_boxPlotData_drugAndPredScore.txt", 
						header=TRUE, sep="\t", quote="")
label_r1 <- read.table("Swanson_cutoff/raynauds_syndrome_boxPlotData_label.txt", 
						header=TRUE, quote="")
data_label_r1 <- cbind(data_r1,label_r1)

### To draw boxplot using ggplot2
Drugs_r1 <- as.factor(data_label_r1$label)
Prediction_score_r1 <- as.numeric(data_label_r1$fet_p_value_and_ratio)

### fill boxes with colors
r1 <- ggplot(data_label_r1, aes(x=Drugs_r1, y=Prediction_score_r1, 
			fill=Drugs_r1)) + 
			geom_boxplot() + 
			ylim(0,330) +
			labs(title="RD @1985", x="", y = "Prediction score") +
			scale_x_discrete(breaks=c("1","2"), labels=c("DDAs","New drugs")) + 
			theme_classic() + 
			theme(
					plot.title = element_text(size=20, face="bold"), 
					axis.text.x = element_text(color = "grey20", size = 12, 
												hjust = .5, vjust = .5, 
												face = "plain"), 
					axis.text.y = element_text(color = "grey20", size = 12, 
												angle = 0, hjust = 1, vjust = 0,
												face = "plain"), 
					axis.title.x = element_text(color = "grey20", size = 12, 
												angle = 0, hjust = .5, vjust = 0, 
												face = "plain"), 
					axis.title.y = element_text(color = "grey20", size = 12, 
												angle = 90, hjust = .5, vjust = .5, 
												face = "plain"), 
					legend.position="none"
			)
 
### Prediction score of known drug – Fish oil: 7.526786746680776
### change box fill color manually and draw line for known drug
r11 <- r1 + scale_fill_manual(values=c("seagreen3", "yellow3")) + 
			geom_hline(yintercept=c(7.526786746680776), linetype="dashed", 
						color = c("blue"), size= 1.0)

### Migraine
### To read known and new predicted drugs
data_m1 <- read.table("Swanson_cutoff/migraine_boxPlotData_drugAndPredScore.txt", 
						header=TRUE, sep="\t", quote="")
label_m1 <- read.table("Swanson_cutoff/migraine_boxPlotData_label.txt", 
						header=TRUE, quote="")
data_label_m1 <- cbind(data_m1,label_m1)

### To draw boxplot using ggplot2
Drugs_m1 <- as.factor(data_label_m1$label)
Prediction_score_m1 <- as.numeric(data_label_m1$fet_p_value_and_ratio)

### fill boxes with colors
m1 <- ggplot(data_label_m1, aes(x=Drugs_m1, y=Prediction_score_m1, 
			fill=Drugs_m1)) + 
			geom_boxplot() + 
			ylim(0,330) + 
			labs(title="Migraine @1987", x="", y = "Prediction score") +
			scale_x_discrete(breaks=c("1","2"), labels=c("DDAs","New drugs")) + 
			theme_classic() + 
			theme(
					plot.title = element_text(size=20, face="bold"), 
					axis.text.x = element_text(color = "grey20", size = 12, 
												hjust = .5, vjust = .5, 
												face = "plain"), 
					axis.text.y = element_text(color = "grey20", size = 12, 
												angle = 0, hjust = 1, vjust = 0, 
												face = "plain"), 
					axis.title.x = element_text(color = "grey20", size = 12, 
												angle = 0, hjust = .5, vjust = 0, 
												face = "plain"), 
					axis.title.y = element_text(color = "grey20", size = 12, 
												angle = 90, hjust = .5, vjust = .5, 
												face = "plain"), 
					legend.position="none"
			)

### Prediction score of known drug – Magnesium: 34.17133211345856
### change box fill color manually and draw line for known drug	
m11 <- m1 + scale_fill_manual(values=c("seagreen3", "yellow3")) + 
			geom_hline(yintercept=c(34.17133211345856), linetype="dashed", 
						color = c("blue"), size= 1.0)


### Alzheimer's disease
### To read known and new predicted drugs
data_a1 <- read.table("Swanson_cutoff/alzheimers_disease_boxPlotData_drugAndPredScore.txt", 
						header=TRUE, sep="\t", quote="")
label_a1 <- read.table("Swanson_cutoff/alzheimers_disease_boxPlotData_label.txt", 
						header=TRUE, quote="")
data_label_a1 <- cbind(data_a1,label_a1)

### To draw boxplot using ggplot2
Drugs_a1 <- as.factor(data_label_a1$label)
Prediction_score_a1 <- as.numeric(data_label_a1$fet_p_value_and_ratio)

### fill boxes with colors
a1 <- ggplot(data_label_a1, aes(x=Drugs_a1, y=Prediction_score_a1, 
			fill=Drugs_a1)) + 
			geom_boxplot() + 
			ylim(0,330) + 
			labs(title="AD @1995", x="", y = "Prediction score") +
			scale_x_discrete(breaks=c("1","2"), labels=c("DDAs","New drugs")) + 
			theme_classic() + 
			theme(
					plot.title = element_text(size=20, face="bold"), 
					axis.text.x = element_text(color = "grey20", size = 12, 
												hjust = .5, vjust = .5, 
												face = "plain"), 
					axis.text.y = element_text(color = "grey20", size = 12, 
												angle = 0, hjust = 1, vjust = 0, 
												face = "plain"), 
					axis.title.x = element_text(color = "grey20", size = 12, 
												angle = 0, hjust = .5, vjust = 0, 
												face = "plain"), 
					axis.title.y = element_text(color = "grey20", size = 12, 
												angle = 90, hjust = .5, vjust = .5, 
												face = "plain"), 
					legend.position="none"
			)

### Prediction score of known drug – Indomethacin (CDM00000570): 321.8637302593377
### Prediction score of known drug – estrogen (CDM00000436): 204.46628669040342
### change box color manually and draw line for known drug
a11 <- a1 + scale_fill_manual(values=c("seagreen3", "yellow3")) + 
			geom_hline(yintercept=c(321.8637302593377, 204.46628669040342), 
						linetype="dashed", 
						color = c("blue", "dodgerblue"), size= 1.0)


### Schizophrenia
### To read known and new predicted drugs
data_s1 <- read.table("Swanson_cutoff/schizophrenia_boxPlotData_drugAndPredScore.txt", 
						header=TRUE, sep="\t", quote="")
label_s1 <- read.table("Swanson_cutoff/schizophrenia_boxPlotData_label.txt", 
						header=TRUE, quote="")
data_label_s1 <- cbind(data_s1,label_s1)

### To draw boxplot using ggplot2
Drugs_s1 <- as.factor(data_label_s1$label)
Prediction_score_s1 <- as.numeric(data_label_s1$fet_p_value_and_ratio)

### fill boxes with colors
s1 <- ggplot(data_label_s1, aes(x=Drugs_s1, y=Prediction_score_s1, 
			fill=Drugs_s1)) + 
			geom_boxplot() + 
			ylim(0,330) +
			labs(title="Schizophrenia @1997", x="", y = "Prediction score") +
			scale_x_discrete(breaks=c("1","2"), labels=c("DDAs","New drugs")) + 
			theme_classic() + 
			theme(
					plot.title = element_text(size=20, face="bold"), 
					axis.text.x = element_text(color = "grey20", size = 12, 
												hjust = .5, vjust = .5, 
												face = "plain"), 
					axis.text.y = element_text(color = "grey20", size = 12, 
												angle = 0, hjust = 1, vjust = 0, 
												face = "plain"), 
					axis.title.x = element_text(color = "grey20", size = 12, 
												angle = 0, hjust = .5, vjust = 0, 
												face = "plain"), 
					axis.title.y = element_text(color = "grey20", size = 12, 
												angle = 90, hjust = .5, 
												vjust = .5, face = "plain"), 
					legend.position="none"
			)

### change box color manually and draw line for known drug
s11 <- s1 + scale_fill_manual(values=c("seagreen3", "yellow3"))



### Figure 4B: Cut-off date is March 2019

### Raynaud's disease
### To read known and new predicted drugs
data_r2 <- read.table("march2019_Swanson_diseases/raynauds_syndrome_boxPlotData_drugAndPredScore.txt", 
						header=TRUE, sep="\t", quote="")
label_r2 <- read.table("march2019_Swanson_diseases/raynauds_syndrome_boxPlotData_label.txt", 
						header=TRUE, quote="")
data_label_r2 <- cbind(data_r2,label_r2)

### To draw boxplot using ggplot2
Drugs_r2 <- as.factor(data_label_r2$label)
Prediction_score_r2 <- as.numeric(data_label_r2$fet_p_value_and_ratio)

### fill boxes with colors
r2 <- ggplot(data_label_r2, aes(x=Drugs_r2, y=Prediction_score_r2, 
			fill=Drugs_r2)) + 
			geom_boxplot() + 
			ylim(0,330) +
			labs(title="RD @2019", x="", y = "Prediction score") +
			scale_x_discrete(breaks=c("1","2"), labels=c("DDAs","New drugs")) + 
			theme_classic() + 
			theme(
					plot.title = element_text(size=20, face="bold"), 
					axis.text.x = element_text(color = "grey20", size = 12, 
												hjust = .5, vjust = .5, 
												face = "plain"), 
					axis.text.y = element_text(color = "grey20", size = 12, 
												angle = 0, hjust = 1, 
												vjust = 0, face = "plain"), 
					axis.title.x = element_text(color = "grey20", size = 12, 
												angle = 0, hjust = .5, 
												vjust = 0, face = "plain"), 
					axis.title.y = element_text(color = "grey20", size = 12, 
												angle = 90, hjust = .5, 
												vjust = .5, face = "plain"), 
					legend.position="none"
			)

### Prediction score of known drug – Fish oil: 64.69839709150772
### change box fill color manually and draw line for known drug
r22 <- r2 + scale_fill_manual(values=c("seagreen3", "yellow3")) + 
			geom_hline(yintercept=c(64.69839709150772), linetype="dashed", 
						color = c("blue"), size= 1.0)


### Migraine
### To read known and new predicted drugs
data_m2 <- read.table("march2019_Swanson_diseases/migraine_boxPlotData_drugAndPredScore.txt", 
						header=TRUE, sep="\t", quote="")
label_m2 <- read.table("march2019_Swanson_diseases/migraine_boxPlotData_label.txt", 
						header=TRUE, quote="")
data_label_m2 <- cbind(data_m2,label_m2)

### To draw boxplot using ggplot2
Drugs_m2 <- as.factor(data_label_m2$label)
Prediction_score_m2 <- as.numeric(data_label_m2$fet_p_value_and_ratio)

### fill boxes with colors
m2 <- ggplot(data_label_m2, aes(x=Drugs_m2, y=Prediction_score_m2, 
			fill=Drugs_m2)) + 
			geom_boxplot() + 
			ylim(0,330) + 
			labs(title="Migraine @2019", x="", y = "Prediction score") +
			scale_x_discrete(breaks=c("1","2"), labels=c("DDAs","New drugs")) + 
			theme_classic() + 
			theme(
					plot.title = element_text(size=20, face="bold"), 
					axis.text.x = element_text(color = "grey20", size = 12, 
												hjust = .5, vjust = .5, 
												face = "plain"), 
					axis.text.y = element_text(color = "grey20", size = 12, 
												angle = 0, hjust = 1, 
												vjust = 0, face = "plain"), 
					axis.title.x = element_text(color = "grey20", size = 12, 
												angle = 0, hjust = .5, 
												vjust = 0, face = "plain"), 
					axis.title.y = element_text(color = "grey20", size = 12, 
												angle = 90, hjust = .5, 
												vjust = .5, face = "plain"), 
					legend.position="none"
			)
 
### Prediction score of known drug – Magnesium: 321.28177806710437
### change box fill color manually and draw line for known drug
m22 <- m2 + scale_fill_manual(values=c("seagreen3", "yellow3")) + 
			geom_hline(yintercept=c(321.28177806710437), linetype="dashed", 
						color = c("blue"), size= 1.0)


### Alzheimer's disease
### To read known and new predicted drugs
data_a2 <- read.table("march2019_Swanson_diseases/alzheimers_disease_boxPlotData_drugAndPredScore.txt", 
						header=TRUE, sep="\t", quote="")
label_a2 <- read.table("march2019_Swanson_diseases/alzheimers_disease_boxPlotData_label.txt", 
						header=TRUE, quote="")
data_label_a2 <- cbind(data_a2,label_a2)

### To draw boxplot using ggplot2
Drugs_a2 <- as.factor(data_label_a2$label)
Prediction_score_a2 <- as.numeric(data_label_a2$fet_p_value_and_ratio)

### fill boxes with colors
a2 <- ggplot(data_label_a2, aes(x=Drugs_a2, y=Prediction_score_a2, 
			fill=Drugs_a2)) + 
			geom_boxplot() + 
			ylim(0,330) + 
			labs(title="AD @2019", x="", y = "Prediction score") +
			scale_x_discrete(breaks=c("1","2"), labels=c("DDAs","New drugs")) + 
			theme_classic() + 
			theme(
					plot.title = element_text(size=20, face="bold"), 
					axis.text.x = element_text(color = "grey20", size = 12, 
												hjust = .5, vjust = .5, 
												face = "plain"), 
					axis.text.y = element_text(color = "grey20", size = 12, 
												angle = 0, hjust = 1, 
												vjust = 0, face = "plain"), 
					axis.title.x = element_text(color = "grey20", size = 12, 
												angle = 0, hjust = .5, 
												vjust = 0, face = "plain"), 
					axis.title.y = element_text(color = "grey20", size = 12, 
												angle = 90, hjust = .5, 
												vjust = .5, face = "plain"), 
					legend.position="none"
			)

### Prediction score of known drug – Indomethacin (CDM00000570): 26.180786662368238
### Prediction score of known drug – estrogen (CDM00000436): 176.64298041099383
### change box color manually and draw line for known drug
a22 <- a2 + scale_fill_manual(values=c("seagreen3", "yellow3")) + 
			geom_hline(yintercept=c(26.180786662368238, 176.64298041099383), 
						linetype="dashed", color = c("blue", "dodgerblue"), 
						size= 1.0)


### Schizophrenia
### To read known and new predicted drugs
data_s2 <- read.table("march2019_Swanson_diseases/schizophrenia_boxPlotData_drugAndPredScore.txt", 
						header=TRUE, sep="\t", quote="")
label_s2 <- read.table("march2019_Swanson_diseases/schizophrenia_boxPlotData_label.txt", 
						header=TRUE, quote="")
data_label_s2 <- cbind(data_s2,label_s2)

### To draw boxplot using ggplot2
Drugs_s2 <- as.factor(data_label_s2$label)
Prediction_score_s2 <- as.numeric(data_label_s2$fet_p_value_and_ratio)

### fill boxes with colors
s2 <- ggplot(data_label_s2, aes(x=Drugs_s2, y=Prediction_score_s2, 
			fill=Drugs_s2)) + 
			geom_boxplot() + 
			ylim(0,330) + 
			labs(title="Schizophrenia @2019", x="", y = "Prediction score") +
			scale_x_discrete(breaks=c("1","2"), labels=c("DDAs","New drugs")) + 
			theme_classic() + 
			theme(
					plot.title = element_text(size=20, face="bold"), 
					axis.text.x = element_text(color = "grey20", size = 12, 
												hjust = .5, vjust = .5, 
												face = "plain"), 
					axis.text.y = element_text(color = "grey20", size = 12, 
												angle = 0, hjust = 1, 
												vjust = 0, face = "plain"), 
					axis.title.x = element_text(color = "grey20", size = 12, 
												angle = 0, hjust = .5, 
												vjust = 0, face = "plain"), 
					axis.title.y = element_text(color = "grey20", size = 12, 
												angle = 90, hjust = .5, 
												vjust = .5, face = "plain"), 
					legend.position="none"
			)

### change box color manually and draw line for known drug
s22 <- s2 + scale_fill_manual(values=c("seagreen3", "yellow3"))


### combine all the plots (Figure 4A, Figure 4B)
sd <- ggarrange(r11, m11, a11, s11, ncol = 4, nrow = 1)
m2019 <- ggarrange(r22, m22, a22, s22, ncol = 4, nrow = 1)
both <- ggarrange(sd, m2019,
          labels = c("A", "B"),
          ncol = 1, nrow = 2)
plot(both)
