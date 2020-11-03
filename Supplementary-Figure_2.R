### Comparison between recall achieved by SKiM and KinderMiner on experts 
### curated disease-drug associations at cut-off date March 2019.


### load library
library(plotly)
library(ggpubr)

### Type 2 diabetes
dat1 <- data.frame(tool = factor(c("KinderMiner","SKiM")),
					Recall = c(0.7253, 0.8242))
# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
p1 <- ggplot(data=dat1, aes(x=tool, y=Recall, fill=tool)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("cyan3", "darkcyan")) +
    ylim(0.0,1.0) + 
    theme(plot.title = element_text(size=10, face="bold"), 
    		axis.text.x=element_blank(), axis.ticks.x=element_blank()) 
p1 <- p1 + labs(title = "T2D (n=91)") + theme(legend.position = "none")


### Type 1 diabetes
dat2 <- data.frame(tool = factor(c("KinderMiner","SKiM")),
					Recall = c(0.75, 1.0000))
# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
p2 <- ggplot(data=dat2, aes(x=tool, y=Recall, fill=tool)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("cyan3", "darkcyan")) +
    ylim(0.0,1.0) + 
    theme(plot.title = element_text(size=10, face="bold"), 
    		axis.text.x=element_blank(), axis.ticks.x=element_blank())
p2 <- p2 + labs(title = "T1D (n=21)") + theme(legend.position = "none")


### Atrial fibrillation
dat3 <- data.frame(tool = factor(c("KinderMiner","SKiM")),
					Recall = c(0.7714, 0.9286))
# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
p3 <- ggplot(data=dat3, aes(x=tool, y=Recall, fill=tool)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("cyan3", "darkcyan")) +
    ylim(0.0,1.0) + 
    theme(plot.title = element_text(size=10, face="bold"), 
    		axis.text.x=element_blank(), axis.ticks.x=element_blank())
p3 <- p3 + labs(title = "Atrial fibrillation (n=70)") + 
			theme(legend.position = "none")


### Bipolar disorder
dat4 <- data.frame(tool = factor(c("KinderMiner","SKiM")),
					Recall = c(0.1807, 0.9759))
# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
p4 <- ggplot(data=dat4, aes(x=tool, y=Recall, fill=tool)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("cyan3", "darkcyan")) +
    ylim(0.0,1.0) + 
    theme(plot.title = element_text(size=10, face="bold"), 
    		axis.text.x=element_blank(), axis.ticks.x=element_blank())
p4 <- p4 + labs(title = "Bipolar disorder (n=83)") + 
			theme(legend.position = "none")


### Hypercholesterolemia
dat5 <- data.frame(tool = factor(c("KinderMiner","SKiM")),
					Recall = c(0.6176, 0.9559))
# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
p5 <- ggplot(data=dat5, aes(x=tool, y=Recall, fill=tool)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("cyan3", "darkcyan")) +
    ylim(0.0,1.0) + 
    theme(plot.title = element_text(size=10, face="bold"), 
    		axis.text.x=element_blank(), axis.ticks.x=element_blank())
p5 <- p5 + labs(title = "Hypercholesterolemia (n=68)") + 
				theme(legend.position = "none")


### Coronary heart disease
dat6 <- data.frame(tool = factor(c("KinderMiner","SKiM")),
					Recall = c(0.0, 0.9130))
# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
p6 <- ggplot(data=dat6, aes(x=tool, y=Recall, fill=tool)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("cyan3", "darkcyan")) +
    ylim(0.0,1.0) + 
    theme(plot.title = element_text(size=10, face="bold"), 
    		axis.text.x=element_blank(), axis.ticks.x=element_blank())
p6 <- p6 + labs(title = "CHD (n=50)") + theme(legend.position = "none")


### Graves’ disease
dat7 <- data.frame(tool = factor(c("KinderMiner","SKiM")),
					Recall = c(0.8889, 1.00))
# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
p7 <- ggplot(data=dat7, aes(x=tool, y=Recall, fill=tool)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("cyan3", "darkcyan")) +
    ylim(0.0,1.0) + 
    theme(plot.title = element_text(size=10, face="bold"), 
    		axis.text.x=element_blank(), axis.ticks.x=element_blank())
p7 <- p7 + labs(title = "Grave’s disease (n=9)") + 
			theme(legend.position = "none")


### Myocardial infarction
dat8 <- data.frame(tool = factor(c("KinderMiner","SKiM")),
					Recall = c(0.6287, 0.8503))
# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
p8 <- ggplot(data=dat8, aes(x=tool, y=Recall, fill=tool)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("cyan3", "darkcyan")) +
    ylim(0.0,1.0) + 
    theme(plot.title = element_text(size=10, face="bold"), 
    		axis.text.x=element_blank(), axis.ticks.x=element_blank())
p8 <- p8 + labs(title = "Myocardial infarction (n=167)") + 
			theme(legend.position = "none")


### Parkinson’s disease
dat9 <- data.frame(tool = factor(c("KinderMiner","SKiM")),
					Recall = c(0.7260, 0.9589))
# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
p9 <- ggplot(data=dat9, aes(x=tool, y=Recall, fill=tool)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("cyan3", "darkcyan")) +
    ylim(0.0,1.0) + 
    theme(plot.title = element_text(size=10, face="bold"), 
    		axis.text.x=element_blank(), axis.ticks.x=element_blank()) 
p9 <- p9 + labs(title = "Parkinson’s disease (n=71)") + 
			theme(legend.position = "none")


### Psoriasis
dat10 <- data.frame(tool = factor(c("KinderMiner","SKiM")),
					Recall = c(0.7158, 0.9158))
# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
p10 <- ggplot(data=dat10, aes(x=tool, y=Recall, fill=tool)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("cyan3", "darkcyan")) +
    ylim(0.0,1.0) + 
    theme(plot.title = element_text(size=10, face="bold"), 
    		axis.text.x=element_blank(), axis.ticks.x=element_blank())
p10 <- p10 + labs(title = "Psoriasis (n=95)") + 
			theme(legend.position = "none")


### Congestive heart failure
dat11 <- data.frame(tool = factor(c("KinderMiner","SKiM")),
					Recall = c(0.63, 0.65))
# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
p11 <- ggplot(data=dat11, aes(x=tool, y=Recall, fill=tool)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("cyan3", "darkcyan")) +
    ylim(0.0,1.0) + 
    theme(plot.title = element_text(size=10, face="bold"), 
    		axis.text.x=element_blank(), axis.ticks.x=element_blank())
p11 <- p11 + labs(title = "CHF (n=100)") + theme(legend.position = "none")


### COPD
dat12 <- data.frame(tool = factor(c("KinderMiner","SKiM")),
					Recall = c(0.6721, 0.9672))
# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
p12 <- ggplot(data=dat12, aes(x=tool, y=Recall, fill=tool)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("cyan3", "darkcyan")) +
    ylim(0.0,1.0) + 
    theme(plot.title = element_text(size=10, face="bold"), 
    		axis.text.x=element_blank(), axis.ticks.x=element_blank())
p12 <- p12 + labs(title = "COPD (n=61)") + theme(legend.position = "none")


### Emphysema
dat13 <- data.frame(tool = factor(c("KinderMiner","SKiM")),
					Recall = c(0.3704, 1.0))
# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
p13 <- ggplot(data=dat13, aes(x=tool, y=Recall, fill=tool)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("cyan3", "darkcyan")) +
    ylim(0.0,1.0) + 
    theme(plot.title = element_text(size=10, face="bold"), 
    		axis.text.x=element_blank(), axis.ticks.x=element_blank())
p13 <- p13 + labs(title = "Emphysema (n=27)") + theme(legend.position = "none")


### Asthma
dat14 <- data.frame(tool = factor(c("KinderMiner","SKiM")),
					Recall = c(0.6634, 0.8911))
# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
p14 <- ggplot(data=dat14, aes(x=tool, y=Recall, fill=tool)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("cyan3", "darkcyan")) +
    ylim(0.0,1.0) + 
    theme(plot.title = element_text(size=10, face="bold"), 
    		axis.text.x=element_blank(), axis.ticks.x=element_blank())
p14 <- p14 + labs(title = "Asthma (n=101)") + theme(legend.position = "none")


### Stroke
dat15 <- data.frame(tool = factor(c("KinderMiner","SKiM")),
					Recall = c(0.7125, 0.9375))
# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
p15 <- ggplot(data=dat15, aes(x=tool, y=Recall, fill=tool)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("cyan3", "darkcyan")) +
    ylim(0.0,1.0) + 
    theme(plot.title = element_text(size=10, face="bold"), 
    		axis.text.x=element_blank(), axis.ticks.x=element_blank())
p15 <- p15 + labs(title = "Stroke (n=80)") + theme(legend.position = "none")


### Influenza
dat16 <- data.frame(tool = factor(c("KinderMiner","SKiM")),
					Recall = c(0.5556, 0.8889))
# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
p16 <- ggplot(data=dat16, aes(x=tool, y=Recall, fill=tool)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("cyan3", "darkcyan")) +
    ylim(0.0,1.0) + 
    theme(plot.title = element_text(size=10, face="bold"), 
    		axis.text.x=element_blank(), axis.ticks.x=element_blank())
p16 <- p16 + labs(title = "Influenza (n=18)") + theme(legend.position = "none")


### Pneumonia
dat17 <- data.frame(tool = factor(c("KinderMiner","SKiM")),
					Recall = c(0.7158, 0.8737))
# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
p17 <- ggplot(data=dat17, aes(x=tool, y=Recall, fill=tool)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("cyan3", "darkcyan")) +
    ylim(0.0,1.0) + 
    theme(plot.title = element_text(size=10, face="bold"), 
    		axis.text.x=element_blank(), axis.ticks.x=element_blank())
p17 <- p17 + labs(title = "Pneumonia (n=95)") + theme(legend.position = "none")


### Chronic kidney disease
dat18 <- data.frame(tool = factor(c("KinderMiner","SKiM")),
					Recall = c(0.4770, 0.6552))
# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
p18 <- ggplot(data=dat18, aes(x=tool, y=Recall, fill=tool)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("cyan3", "darkcyan")) +
    ylim(0.0,1.0) + 
    theme(plot.title = element_text(size=10, face="bold"), 
    		axis.text.x=element_blank(), axis.ticks.x=element_blank())
p18 <- p18 + labs(title = "CKD (n=174)") + theme(legend.position = "none")


### Kidney failure
dat19 <- data.frame(tool = factor(c("KinderMiner","SKiM")),
					Recall = c(0.5566, 0.6981))
# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
p19 <- ggplot(data=dat19, aes(x=tool, y=Recall, fill=tool)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("cyan3", "darkcyan")) +
    ylim(0.0,1.0) + 
    theme(plot.title = element_text(size=10, face="bold"), 
    		axis.text.x=element_blank(), axis.ticks.x=element_blank())
p19 <- p19 + labs(title = "Kidney failure (n=106)") + 
			theme(legend.position = "none")


### Suicide
dat20 <- data.frame(tool = factor(c("KinderMiner","SKiM")),
					Recall = c(0.0000, 1.0000))
# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
p20 <- ggplot(data=dat20, aes(x=tool, y=Recall, fill=tool)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("cyan3", "darkcyan")) +
    ylim(0.0,1.0) + 
    theme(plot.title = element_text(size=10, face="bold"), 
    		axis.text.x=element_blank(), axis.ticks.x=element_blank())
p20 <- p20 + labs(title = "Suicide (n=2)") + theme(legend.position = "none")


### Lower respiratory infections
dat21 <- data.frame(tool = factor(c("KinderMiner","SKiM")),
					Recall = c(0.0000, 0.9677))
# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
p21 <- ggplot(data=dat21, aes(x=tool, y=Recall, fill=tool)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("cyan3", "darkcyan")) +
    ylim(0.0,1.0) + 
    theme(plot.title = element_text(size=10, face="bold"), 
    		axis.text.x=element_blank(), axis.ticks.x=element_blank())
p21 <- p21 + labs(title = "LRI (n=31)") + theme(legend.position = "none")


### Tuberculosis
dat22 <- data.frame(tool = factor(c("KinderMiner","SKiM")),
					Recall = c(0.7097, 0.9355))
# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
p22 <- ggplot(data=dat22, aes(x=tool, y=Recall, fill=tool)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("cyan3", "darkcyan")) +
    ylim(0.0,1.0) + 
    theme(plot.title = element_text(size=10, face="bold"), 
    		axis.text.x=element_blank(), axis.ticks.x=element_blank())
p22 <- p22 + labs(title = "Tuberculosis (n=31)") + 
			theme(legend.position = "none")


### To combine the bar chats into single figure
theme_set(theme_pubr())
figure <- ggarrange(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, 
					p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, 
					ncol = 8, nrow = 3, common.legend = TRUE, legend = "bottom")
figure <- ggarrange(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, 
					p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, 
					ncol = 5, nrow = 5, common.legend = TRUE, legend = "bottom")
figure
