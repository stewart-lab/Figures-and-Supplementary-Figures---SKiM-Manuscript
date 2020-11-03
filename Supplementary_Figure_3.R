### Precision@20 achieved by SKiM for 22 conditions at cut-off date March 2019.


### upload library
library(plotly)
library(ggpubr)


### Type 2 diabetes
dat5 <- data.frame(Type_of_evaluation = factor(c("E1","E2","E3"), 
						levels=c("E1","E2","E3")),
    					Precision_at_20 = c(0.25, 0.45, 0.6))
p1 <- ggplot(data=dat5, 
			aes(x=Type_of_evaluation, y=Precision_at_20, 
				fill=Type_of_evaluation)) +
    	geom_bar(stat="identity", position=position_dodge(), colour="black") +
    	scale_fill_manual(
    		values=c("aquamarine2", " aquamarine3", " aquamarine4"),
			name="Type of evaluation",
			breaks=c("E1","E2","E3"),
			labels=c("E1: Evaluation using expert curated drugs",
    					"E2: E1 and A-C literature evidence",
    				    "E3: E1, E2 and A-B-C literature evidence")) + 
    	ylim(0.00,1.00)
p1 <- p1 + labs(title = "T2D")


### Type 1 diabetes
dat5 <- data.frame(Type_of_evaluation = factor(c("E1","E2","E3"), 
					levels=c("E1","E2","E3")),
    				Precision_at_20 = c(0, 0.25, 0.5263))
p2 <- ggplot(data=dat5, 
			aes(x=Type_of_evaluation, y=Precision_at_20, 
				fill=Type_of_evaluation)) +
    	geom_bar(stat="identity", position=position_dodge(), colour="black") +
    	scale_fill_manual(
    		values=c("aquamarine2", " aquamarine3", " aquamarine4"),
			name="Type of evaluation",
			breaks=c("E1","E2","E3"),
			labels=c("E1 – Evaluation using expert curated drugs",
    					"E2 – E1 and A-C literature evidence",
    					"E3 – E1, E2 and A-B-C literature evidence")) + 
    	ylim(0.00,1.00)
p2 <- p2 + labs(title = "T1D")


### Atrial fibrillation
dat5 <- data.frame(Type_of_evaluation = factor(c("E1","E2","E3"), 
					levels=c("E1","E2","E3")),
    				Precision_at_20 = c(0.3, 0.85, 0.9))
p3 <- ggplot(data=dat5, 
			aes(x=Type_of_evaluation, y=Precision_at_20, 
				fill=Type_of_evaluation)) +
    	geom_bar(stat="identity", position=position_dodge(), colour="black") +
    	scale_fill_manual(
    		values=c("aquamarine2", " aquamarine3", " aquamarine4"),
			name="Type of evaluation",
			breaks=c("E1","E2","E3"),
			labels=c("E1 – Evaluation using expert curated drugs",
    					"E2 – E1 and A-C literature evidence",
    					"E3 – E1, E2 and A-B-C literature evidence")) + 
    	ylim(0.00,1.00)
p3 <- p3 + labs(title = "Atrial fibrillation")


### Bipolar disorder
dat5 <- data.frame(Type_of_evaluation = factor(c("E1","E2","E3"), 
					levels=c("E1","E2","E3")),
    				Precision_at_20 = c(0.15, 0.75, 0.85))
p4 <- ggplot(data=dat5, 
			aes(x=Type_of_evaluation, y=Precision_at_20, 
				fill=Type_of_evaluation)) +
    	geom_bar(stat="identity", position=position_dodge(), colour="black") +
    	scale_fill_manual(
    		values=c("aquamarine2", " aquamarine3", " aquamarine4"),
			name="Type of evaluation",
			breaks=c("E1","E2","E3"),
			labels=c("E1 – Evaluation using expert curated drugs",
    					"E2 – E1 and A-C literature evidence",
    					"E3 – E1, E2 and A-B-C literature evidence")) + 
    	ylim(0.00,1.00)
p4 <- p4 + labs(title = "Bipolar disorder")


### Hypercholesterolemia
dat5 <- data.frame(Type_of_evaluation = factor(c("E1","E2","E3"), 
					levels=c("E1","E2","E3")),
    				Precision_at_20 = c(0, 0.15, 0.65))
p5 <- ggplot(data=dat5, 
			aes(x=Type_of_evaluation, y=Precision_at_20, 
				fill=Type_of_evaluation)) +
    	geom_bar(stat="identity", position=position_dodge(), colour="black") +
    	scale_fill_manual(
    		values=c("aquamarine2", " aquamarine3", " aquamarine4"),
			name="Type of evaluation",
			breaks=c("E1","E2","E3"),
			labels=c("E1 – Evaluation using expert curated drugs",
    					"E2 – E1 and A-C literature evidence",
    					"E3 – E1, E2 and A-B-C literature evidence")) + 
    	ylim(0.00,1.00)
p5 <- p5 + labs(title = "Hypercholesterolemia")


### Coronary Heart Disease (CHD)
dat5 <- data.frame(Type_of_evaluation = factor(c("E1","E2","E3"), 
					levels=c("E1","E2","E3")),
    				Precision_at_20 = c(0, 0.05, 0.8))
p6 <- ggplot(data=dat5, 
			aes(x=Type_of_evaluation, y=Precision_at_20, 
				fill=Type_of_evaluation)) +
    	geom_bar(stat="identity", position=position_dodge(), colour="black") +
    	scale_fill_manual(
    		values=c("aquamarine2", " aquamarine3", " aquamarine4"),
			name="Type of evaluation",
			breaks=c("E1","E2","E3"),
			labels=c("E1 – Evaluation using expert curated drugs",
    					"E2 – E1 and A-C literature evidence",
    					"E3 – E1, E2 and A-B-C literature evidence")) + 
    	ylim(0.00,1.00)
p6 <- p6 + labs(title = "CHD")


### Grave’s Disease
dat5 <- data.frame(Type_of_evaluation = factor(c("E1","E2","E3"), 
					levels=c("E1","E2","E3")),
    				Precision_at_20 = c(0, 0.1, 0.3))
p7 <- ggplot(data=dat5, 
			aes(x=Type_of_evaluation, y=Precision_at_20, 
				fill=Type_of_evaluation)) +
    	geom_bar(stat="identity", position=position_dodge(), colour="black") +
    	scale_fill_manual(
    		values=c("aquamarine2", " aquamarine3", " aquamarine4"),
			name="Type of evaluation",
			breaks=c("E1","E2","E3"),
			labels=c("E1 – Evaluation using expert curated drugs",
    					"E2 – E1 and A-C literature evidence",
    					"E3 – E1, E2 and A-B-C literature evidence")) + 
    	ylim(0.00,1.00)
p7 <- p7 + labs(title = "Grave’s disease")


### Myocardial infarction
dat5 <- data.frame(Type_of_evaluation = factor(c("E1","E2","E3"), 
					levels=c("E1","E2","E3")),
    				Precision_at_20 = c(0.35, 0.75, 0.75))
p8 <- ggplot(data=dat5, 
			aes(x=Type_of_evaluation, y=Precision_at_20, 
				fill=Type_of_evaluation)) +
    	geom_bar(stat="identity", position=position_dodge(), colour="black") +
    	scale_fill_manual(
    		values=c("aquamarine2", " aquamarine3", " aquamarine4"),
			name="Type of evaluation",
			breaks=c("E1","E2","E3"),
			labels=c("E1 – Evaluation using expert curated drugs",
    					"E2 – E1 and A-C literature evidence",
    					"E3 – E1, E2 and A-B-C literature evidence")) + 
    	ylim(0.00,1.00)
p8 <- p8 + labs(title = "Myocardial infarction")


### Parkinson’s disease
dat5 <- data.frame(Type_of_evaluation = factor(c("E1","E2","E3"), 
					levels=c("E1","E2","E3")),
    				Precision_at_20 = c(0.15, 0.75, 0.95))
p9 <- ggplot(data=dat5, 
			aes(x=Type_of_evaluation, y=Precision_at_20, 
				fill=Type_of_evaluation)) +
    	geom_bar(stat="identity", position=position_dodge(), colour="black") +
    	scale_fill_manual(
    		values=c("aquamarine2", " aquamarine3", " aquamarine4"),
			name="Type of evaluation",
			breaks=c("E1","E2","E3"),
			labels=c("E1 – Evaluation using expert curated drugs",
    					"E2 – E1 and A-C literature evidence",
    					"E3 – E1, E2 and A-B-C literature evidence")) + 
    	ylim(0.00,1.00)
p9 <- p9 + labs(title = "Parkinson’s disease")


### Psoriasis
dat5 <- data.frame(Type_of_evaluation = factor(c("E1","E2","E3"), 
					levels=c("E1","E2","E3")),
    				Precision_at_20 = c(0.15, 0.2, 0.3571))
p10 <- ggplot(data=dat5, 
			aes(x=Type_of_evaluation, y=Precision_at_20, 
				fill=Type_of_evaluation)) +
    	geom_bar(stat="identity", position=position_dodge(), colour="black") +
    	scale_fill_manual(
    		values=c("aquamarine2", " aquamarine3", " aquamarine4"),
			name="Type of evaluation",
			breaks=c("E1","E2","E3"),
			labels=c("E1 – Evaluation using expert curated drugs",
    					"E2 – E1 and A-C literature evidence",
    					"E3 – E1, E2 and A-B-C literature evidence")) + 
    	ylim(0.00,1.00)
p10 <- p10 + labs(title = "Psoriasis")


### Congestive heart failure (CHF)
dat5 <- data.frame(Type_of_evaluation = factor(c("E1","E2","E3"), 
					levels=c("E1","E2","E3")),
    				Precision_at_20 = c(0, 0.25, 0.8235))
p11 <- ggplot(data=dat5, 
			aes(x=Type_of_evaluation, y=Precision_at_20, 
				fill=Type_of_evaluation)) +
    	geom_bar(stat="identity", position=position_dodge(), colour="black") +
    	scale_fill_manual(
    		values=c("aquamarine2", " aquamarine3", " aquamarine4"),
			name="Type of evaluation",
			breaks=c("E1","E2","E3"),
			labels=c("E1 – Evaluation using expert curated drugs",
    					"E2 – E1 and A-C literature evidence",
    					"E3 – E1, E2 and A-B-C literature evidence")) + 
   		ylim(0.00,1.00)
p11 <- p11 + labs(title = "CHF")


### Chronic obstructive pulmonary disease (COPD)
dat5 <- data.frame(Type_of_evaluation = factor(c("E1","E2","E3"), 
					levels=c("E1","E2","E3")),
    				Precision_at_20 = c(0.05, 0.45, 1))
p12 <- ggplot(data=dat5, 
			aes(x=Type_of_evaluation, y=Precision_at_20, 
				fill=Type_of_evaluation)) +
    	geom_bar(stat="identity", position=position_dodge(), colour="black") +
    	scale_fill_manual(
    		values=c("aquamarine2", " aquamarine3", " aquamarine4"),
			name="Type of evaluation",
			breaks=c("E1","E2","E3"),
			labels=c("E1 – Evaluation using expert curated drugs",
    					"E2 – E1 and A-C literature evidence",
    					"E3 – E1, E2 and A-B-C literature evidence")) + 
    	ylim(0.00,1.00)
p12 <- p12 + labs(title = "COPD")


### Emphysema
dat5 <- data.frame(Type_of_evaluation = factor(c("E1","E2","E3"), 
					levels=c("E1","E2","E3")),
    				Precision_at_20 = c(0.15, 0.25, 0.95))
p13 <- ggplot(data=dat5, 
			aes(x=Type_of_evaluation, y=Precision_at_20, 
				fill=Type_of_evaluation)) +
    	geom_bar(stat="identity", position=position_dodge(), colour="black") +
    	scale_fill_manual(
    		values=c("aquamarine2", " aquamarine3", " aquamarine4"),
			name="Type of evaluation",
			breaks=c("E1","E2","E3"),
			labels=c("E1 – Evaluation using expert curated drugs",
    					"E2 – E1 and A-C literature evidence",
    					"E3 – E1, E2 and A-B-C literature evidence")) + 
    	ylim(0.00,1.00)
p13 <- p13 + labs(title = "Emphysema")


### Asthma
dat5 <- data.frame(Type_of_evaluation = factor(c("E1","E2","E3"), 
					levels=c("E1","E2","E3")),
    				Precision_at_20 = c(0.2, 0.55, 0.7))
p14 <- ggplot(data=dat5, 
			aes(x=Type_of_evaluation, y=Precision_at_20, 
				fill=Type_of_evaluation)) +
    	geom_bar(stat="identity", position=position_dodge(), colour="black") +
    	scale_fill_manual(
    		values=c("aquamarine2", " aquamarine3", " aquamarine4"),
			name="Type of evaluation",
			breaks=c("E1","E2","E3"),
			labels=c("E1 – Evaluation using expert curated drugs",
    					"E2 – E1 and A-C literature evidence",
    					"E3 – E1, E2 and A-B-C literature evidence")) + 
    	ylim(0.00,1.00)
p14 <- p14 + labs(title = "Asthma")


### Stroke
dat5 <- data.frame(Type_of_evaluation = factor(c("E1","E2","E3"), 
					levels=c("E1","E2","E3")),
    				Precision_at_20 = c(0.4, 0.85, 0.95))
p15 <- ggplot(data=dat5, 
			aes(x=Type_of_evaluation, y=Precision_at_20, 
				fill=Type_of_evaluation)) +
    	geom_bar(stat="identity", position=position_dodge(), colour="black") +
    	scale_fill_manual(
    		values=c("aquamarine2", " aquamarine3", " aquamarine4"),
			name="Type of evaluation",
			breaks=c("E1","E2","E3"),
			labels=c("E1 – Evaluation using expert curated drugs",
    					"E2 – E1 and A-C literature evidence",
    					"E3 – E1, E2 and A-B-C literature evidence")) + 
    	ylim(0.00,1.00)
p15 <- p15 + labs(title = "Stroke")


### Influenza
dat5 <- data.frame(Type_of_evaluation = factor(c("E1","E2","E3"), 
					levels=c("E1","E2","E3")),
    				Precision_at_20 = c(0, 0.1111, 1))
p16 <- ggplot(data=dat5, 
			aes(x=Type_of_evaluation, y=Precision_at_20, 
				fill=Type_of_evaluation)) +
    	geom_bar(stat="identity", position=position_dodge(), colour="black") +
    	scale_fill_manual(
    		values=c("aquamarine2", " aquamarine3", " aquamarine4"),
			name="Type of evaluation",
			breaks=c("E1","E2","E3"),
			labels=c("E1 – Evaluation using expert curated drugs",
    					"E2 – E1 and A-C literature evidence",
    					"E3 – E1, E2 and A-B-C literature evidence")) + 
    	ylim(0.00,1.00)
p16 <- p16 + labs(title = "Influenza")


### Pneumonia
dat5 <- data.frame(Type_of_evaluation = factor(c("E1","E2","E3"), 
					levels=c("E1","E2","E3")),
    				Precision_at_20 = c(0.4, 0.8, 0.95))
p17 <- ggplot(data=dat5, 
			aes(x=Type_of_evaluation, y=Precision_at_20, 
				fill=Type_of_evaluation)) +
    	geom_bar(stat="identity", position=position_dodge(), colour="black") +
    	scale_fill_manual(
    		values=c("aquamarine2", " aquamarine3", " aquamarine4"),
			name="Type of evaluation",
			breaks=c("E1","E2","E3"),
			labels=c("E1 – Evaluation using expert curated drugs",
    					"E2 – E1 and A-C literature evidence",
    					"E3 – E1, E2 and A-B-C literature evidence")) + 
    	ylim(0.00,1.00)
p17 <- p17 + labs(title = "Pneumonia")


### Chronic kidney disease
dat5 <- data.frame(Type_of_evaluation = factor(c("E1","E2","E3"), 
					levels=c("E1","E2","E3")),
    				Precision_at_20 = c(0.25, 0.7, 0.85))
p18 <- ggplot(data=dat5, 
			aes(x=Type_of_evaluation, y=Precision_at_20, 
				fill=Type_of_evaluation)) +
    	geom_bar(stat="identity", position=position_dodge(), colour="black") +
    	scale_fill_manual(
    		values=c("aquamarine2", " aquamarine3", " aquamarine4"),
			name="Type of evaluation",
			breaks=c("E1","E2","E3"),
			labels=c("E1 – Evaluation using expert curated drugs",
    					"E2 – E1 and A-C literature evidence",
    					"E3 – E1, E2 and A-B-C literature evidence")) + 
    	ylim(0.00,1.00)
p18 <- p18 + labs(title = "CKD")


### Kidney failure
dat5 <- data.frame(Type_of_evaluation = factor(c("E1","E2","E3"), 
					levels=c("E1","E2","E3")),
    				Precision_at_20 = c(0, 0.55, 0.8421))
p19 <- ggplot(data=dat5, 
			aes(x=Type_of_evaluation, y=Precision_at_20, 
				fill=Type_of_evaluation)) +
    	geom_bar(stat="identity", position=position_dodge(), colour="black") +
    	scale_fill_manual(
    		values=c("aquamarine2", " aquamarine3", " aquamarine4"),
			name="Type of evaluation",
			breaks=c("E1","E2","E3"),
			labels=c("E1 – Evaluation using expert curated drugs",
    					"E2 – E1 and A-C literature evidence",
    					"E3 – E1, E2 and A-B-C literature evidence")) + 
    	ylim(0.00,1.00)
p19 <- p19 + labs(title = "Kidney failure")


### Suicide
dat5 <- data.frame(Type_of_evaluation = factor(c("E1","E2","E3"), 
					levels=c("E1","E2","E3")),
    				Precision_at_20 = c(0, 0.1, 0.5))
p20 <- ggplot(data=dat5, 
			aes(x=Type_of_evaluation, y=Precision_at_20, 
				fill=Type_of_evaluation)) +
    	geom_bar(stat="identity", position=position_dodge(), colour="black") +
    	scale_fill_manual(
    		values=c("aquamarine2", " aquamarine3", " aquamarine4"),
			name="Type of evaluation",
			breaks=c("E1","E2","E3"),
			labels=c("E1 – Evaluation using expert curated drugs",
    					"E2 – E1 and A-C literature evidence",
    					"E3 – E1, E2 and A-B-C literature evidence")) + 
    	ylim(0.00,1.00)
p20 <- p20 + labs(title = "Suicide")


### Lower respiratory tract infection (LRI)
dat5 <- data.frame(Type_of_evaluation = factor(c("E1","E2","E3"), 
					levels=c("E1","E2","E3")),
    				Precision_at_20 = c(0, 0.2, 0.8421))
p21 <- ggplot(data=dat5, 
			aes(x=Type_of_evaluation, y=Precision_at_20, 
				fill=Type_of_evaluation)) +
    	geom_bar(stat="identity", position=position_dodge(), colour="black") +
    	scale_fill_manual(
    		values=c("aquamarine2", " aquamarine3", " aquamarine4"),
			name="Type of evaluation",
			breaks=c("E1","E2","E3"),
			labels=c("E1 – Evaluation using expert curated drugs",
    					"E2 – E1 and A-C literature evidence",
    					"E3 – E1, E2 and A-B-C literature evidence")) + 
    	ylim(0.00,1.00)
p21 <- p21 + labs(title = "LRI")


### Tuberculosis
dat5 <- data.frame(Type_of_evaluation = factor(c("E1","E2","E3"), 
					levels=c("E1","E2","E3")),
    				Precision_at_20 = c(0, 0.2778, 0.6))
p22 <- ggplot(data=dat5, 
			aes(x=Type_of_evaluation, y=Precision_at_20, 
				fill=Type_of_evaluation)) +
    	geom_bar(stat="identity", position=position_dodge(), colour="black") +
    	scale_fill_manual(
    		values=c("aquamarine2", " aquamarine3", " aquamarine4"),
			name="Type of evaluation",
			breaks=c("E1","E2","E3"),
			labels=c("E1 – Evaluation using expert curated drugs",
    					"E2 – E1 and A-C literature evidence",
    					"E3 – E1, E2 and A-B-C literature evidence")) + 
    	ylim(0.00,1.00)
p22 <- p22 + labs(title = "Tuberculosis")


### To combine the bar chats into single figure
theme_set(theme_pubr())
figure <- ggarrange(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, 
					p12, p13, p14, p15, p16, p17, p18, p19, p20, p21, p22, 
					ncol = 5, nrow = 5, common.legend = TRUE, legend = "bottom")
figure