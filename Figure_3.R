### Recall

### upload library
library(plotly)

### Raynaud’s disease
dat1 <- data.frame(
tool = factor(c("KinderMiner","KinderMiner","SKiM","SKiM")),
cut_off_date = factor(c("1985","2019","1985","2019"), 
levels=c("1985","2019")),                                          
Recall = c(0.3333, 0.5, 0.8333, 1.00)
)

# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
p1 <- ggplot(data=dat1, aes(x= cut_off_date, y=Recall, fill=tool)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("cyan3", "darkcyan")) +
    ylim(0.0,1.0)

p1 <- p1 + labs(title = "RD (n=18)")

### Migraine
dat2 <- data.frame(
tool = factor(c("KinderMiner","KinderMiner","SKiM","SKiM")),
cut_off_date = factor(c("1987","2019","1987","2019"), 
levels=c("1987","2019")),
Recall = c(0.2022, 0.6629, 0.7528, 0.9775)
)

# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
p2 <- ggplot(data=dat2, aes(x= cut_off_date, y=Recall, fill=tool)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("cyan3", "darkcyan")) +
    ylim(0.0,1.0)
p2 <- p2 + labs(title = "Migraine (n=89)")

### Alzheimer’s disease
dat3 <- data.frame(
tool = factor(c("KinderMiner","KinderMiner","SKiM","SKiM")),
cut_off_date = factor(c("1995","2019","1995","2019"), 
levels=c("1995","2019")),
Recall = c(0.2787, 0.6230, 0.7049, 0.9180)
)

# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
p3 <- ggplot(data=dat3, aes(x= cut_off_date, y=Recall, fill=tool)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("cyan3", "darkcyan")) +
    ylim(0.0,1.0)
p3 <- p3 + labs(title = "AD (n=61)")

### Schizophrenia
dat4 <- data.frame(
tool = factor(c("KinderMiner","KinderMiner","SKiM","SKiM")),
cut_off_date = factor(c("1997","2019","1997","2019"), 
levels=c("1997","2019")),                                                    
Recall = c(0.4783, 0.75, 0.7935, 0.9239)
)

# Bar graph, time on x-axis, color fill grouped by sex -- use position_dodge()
p4 <- ggplot(data=dat4, aes(x= cut_off_date, y=Recall, fill=tool)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("cyan3", "darkcyan")) +
    ylim(0.0,1.0)
p4 <- p4 + labs(title = "Schizophrenia (n=92)")


### To combine the bar chats into single figure
library(ggpubr)
theme_set(theme_pubr())
figure <- ggarrange(p1, p2, p3, p4, ncol = 4, nrow = 1, 
                    common.legend = TRUE, 
                    legend = "bottom")
figureA <- ggarrange(figure, labels = c("A"))


### Precision @20 – Based on expert curated disease-drug associations, 
### A-C and A-B-C annotation

### upload library
library(plotly)

### Raynaud’s disease
dat <- data.frame(
Type_of_evaluation = factor(c("E1","E2","E3"), levels=c("E1","E2","E3")),
    Precision_at_20 = c(0.05, 0.4737, 0.5882)
)

p11 <- ggplot(data=dat, 
aes(x=Type_of_evaluation, y=Precision_at_20, fill=Type_of_evaluation)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("aquamarine2", " aquamarine3", " aquamarine4"),
name="Type of evaluation",
breaks=c("E1","E2","E3"),
labels=c("E1: Evaluation using DDA",
    "E2: Evaluation using E1 and A-C literature evidence",
    "E3: Evaluation using E1, E2 and A-B-C literature evidence")) + 
    ylim(0.00,1.00)

p11 <- p11 + labs(title = "RD")

### Migraine
dat <- data.frame(
Type_of_evaluation = factor(c("E1","E2","E3"), levels=c("E1","E2","E3")),
    Precision@20 = c(0.05, 0.7, 0.9)
)

p12 <- ggplot(data=dat, 
aes(x=Type_of_evaluation, y=Precision@20, fill=Type_of_evaluation)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("aquamarine2", " aquamarine3", " aquamarine4"),
name="Type of evaluation",
breaks=c("E1","E2","E3"),
labels=c("E1: Evaluation using DDA",
    "E2: Evaluation using E1 and A-C literature evidence",
    "E3: Evaluation using E1, E2 and A-B-C literature evidence")) + 
    ylim(0.00,1.00)

p12 <- p12 + labs(title = "Migraine")

### Alzheimer’s disease
dat <- data.frame(
Type_of_evaluation = factor(c("E1","E2","E3"), levels=c("E1","E2","E3")),
    Precision@20 = c(0, 0.3684, 0.7895)
)

p13 <- ggplot(data=dat, 
aes(x=Type_of_evaluation, y=Precision@20, fill=Type_of_evaluation)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("aquamarine2", " aquamarine3", " aquamarine4"),
name="Type of evaluation",
breaks=c("E1","E2","E3"),
labels=c("E1: Evaluation using DDA",
    "E2: Evaluation using E1 and A-C literature evidence",
    "E3: Evaluation using E1, E2 and A-B-C literature evidence")) + 
    ylim(0.00,1.00)

p13 <- p13 + labs(title = "AD")

### Schizophrenia
dat <- data.frame(
Type_of_evaluation = factor(c("E1","E2","E3"), levels=c("E1","E2","E3")),
    Precision@20 = c(0.1, 0.75, 0.85)
)

p14 <- ggplot(data=dat, 
aes(x=Type_of_evaluation, y=Precision@20, fill=Type_of_evaluation)) +
    geom_bar(stat="identity", position=position_dodge(), colour="black") +
    scale_fill_manual(values=c("aquamarine2", " aquamarine3", " aquamarine4"),
name="Type of evaluation",
breaks=c("E1","E2","E3"),
labels=c("E1: Evaluation using DDA",
    "E2: Evaluation using E1 and A-C literature evidence",
    "E3: Evaluation using E1, E2 and A-B-C literature evidence")) + 
    ylim(0.00,1.00)

p14 <- p14 + labs(title = "Schizophrenia")

### To combine the bar chats into single figure

### upload library
library(ggpubr)

theme_set(theme_pubr())
figure2 <- ggarrange(p11, p12, p13, p14, ncol = 4, nrow = 1, 
                    common.legend = TRUE, legend = "bottom")
figureB <- ggarrange(figure2, labels = c("B"))

### To combine Fig 3A and 3B

### upload library
library(ggpubr)

theme_set(theme_pubr())
fig_3 <- ggarrange(figureA, figureB, nrow = 2)
fig_3
