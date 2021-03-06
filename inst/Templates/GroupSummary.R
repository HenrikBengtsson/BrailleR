Data.Mean <- aggregate(ResponseName ~ FactorSet, data=DataName, mean, na.rm=TRUE)
Data.StDev <- aggregate(ResponseName ~ FactorSet, data=DataName, sd, na.rm=TRUE)
Data.n <- aggregate(ResponseName ~ FactorSet, data=DataName, nNonMissing)
Data.StdErr = Data.StDev[,LastCol]/sqrt(Data.n[,LastCol])
DataSummary = cbind(Data.Mean, Data.StDev[,LastCol], Data.n[,LastCol], Data.StdErr)
colnames(DataSummary) = c(paste(FactorNames, "Level"), "Mean", "Standard deviation", "n", "Standard error")
