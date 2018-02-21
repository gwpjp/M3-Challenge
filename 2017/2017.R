library(xlsx)
library(ggplot2)
read.xlsx()
p1 <- NPS_MeanSeaLevel_1
p1$months <- as.numeric(row.names(p1))
p1$years <- p1$months/12
str(p1)
ggplot(p1, aes(years,Monthly_MSL)) + geom_point(na.rm=TRUE) 
l <- lm(Monthly_MSL ~ years, p1)
summary(l)

qnorm(.975)


p2 <- X8413320_MeanSeaLevelTrends
p2$months <- as.numeric(row.names(p2))
p2$years <- p2$months/12
summary(lm(Monthly_MSL ~ years, p2[565:1405,]))





#--------
t <- 20
mu <- 2.178
sd <- .111
pnorm(300.8*t/100, mean = mu*t*t/100, sd = sd*t^.5*t/100)

