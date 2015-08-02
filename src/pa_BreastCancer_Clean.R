# https://archive.ics.uci.edu/ml/machine-learning-databases/breast-cancer/
# Filename: breast-cancer.data
getwd()
setwd("src")
#setwd("D:\\Projects\\Biz_Entrep_Startup_Ventures\\NCDataPalooza_2015_OpenKPI\\code_git\\git\\OpenKPI\\src")
getwd()

bcdf = read.csv("..\\data\\breast-cancer.data", head=FALSE,sep=",", stringsAsFactors=TRUE)
head(bcdf)
str(bcdf)

# Col description from file "breast-cancer.names"
# 1. Class: no-recurrence-events, recurrence-events
# 2. age: 10-19, 20-29, 30-39, 40-49, 50-59, 60-69, 70-79, 80-89, 90-99.
# 3. menopause: lt40, ge40, premeno.
# 4. tumor-size: 0-4, 5-9, 10-14, 15-19, 20-24, 25-29, 30-34, 35-39, 40-44,
# 45-49, 50-54, 55-59.
# 5. inv-nodes: 0-2, 3-5, 6-8, 9-11, 12-14, 15-17, 18-20, 21-23, 24-26,
# 27-29, 30-32, 33-35, 36-39.
# 6. node-caps: yes, no.
# 7. deg-malig: 1, 2, 3.
# 8. breast: left, right.
# 9. breast-quad: left-up, left-low, right-up,  right-low, central.
# 10. irradiat:  yes, no.

names(bcdf) = c("Class", "age", "menopause","tumor-size", "inv-nodes", "node-caps", "deg-malig", "breast", "breast-quad", "irradiat" )
head(bcdf)
str(bcdf)
dim(bcdf)
hist(bcdf$Class)
hist(bcdf$"deg-malig")

as.numeric(bcdf$Class)
hist(as.numeric(bcdf$Class))
hist(as.numeric(bcdf$"node-caps"), main="Histogram of node-caps", xlab="node-caps")



bcdf_filtered = subset(bcdf, "node-caps" != "?")
bcdf_filtered = bcdf[bcdf$"node-caps" != "?", ]

str(bcdf_filtered)
dim(bcdf_filtered)

#Plot histogram of node-caps witgh "?" filtered out
hist(as.numeric(bcdf_filtered$"node-caps"), main="Histogram of node-caps", xlab="node-caps")



