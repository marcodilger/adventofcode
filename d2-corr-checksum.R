# read in as data frame, for each row sum up difference between max and min

data <- read.delim(file = "data/d2-corr-checksum.txt", sep="\t", header = F)

mins <- apply(data, 1, min)
max <- apply(data, 1, max)

Result <- sum(max-mins)
print(Result)
