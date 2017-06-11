## ------------------------------------------------------------------------

library(di)
# Simulate database of N individuals:
N <- 100
dd <- data.frame(subj=seq(1:N), 
                 var1=rbinom(N,1,.5), 
                 var2=rbinom(N,1,.5), 
                 var3=rbinom(N,1,.5))
# Calculate DI
ddi <- di(dd, c("var1", "var2", "var3"))

## ------------------------------------------------------------------------
ddi <- di(dd, c("var1", "var2", "var3"), rescale = FALSE)

## ------------------------------------------------------------------------
ddi <- di(dd, c("var1", "var2", "var3"), rescale = FALSE, invert=c("var1", "var3"))

