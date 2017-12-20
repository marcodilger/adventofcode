# Day 20: Particle Swarm ---

input <- readLines(con = "data/d20-particles.txt", n = -1) # n = -1 : reads until EOF
inputSplit <- strsplit(input, split = ", ")
inputDF <- as.data.frame((do.call(rbind, inputSplit)), stringsAsFactors = FALSE)

#cleanign input

inputVector <- (do.call(rbind, inputSplit))[ ,3] %>% gsub(pattern = "a=<", x = ., replacement = "") %>%
  gsub(pattern = ">", x = ., replacement = "")

acceleration <- strsplit(inputVector, split=",")
accMatrix <- as.data.frame(do.call(rbind, acceleration), stringsAsFactors = FALSE)
accVector <- sqrt((as.integer(accMatrix$V1))^2 + (as.integer(accMatrix$V2))^2 + (as.integer(accMatrix$V3))^2)
result <- which(accVector == min(accVector))-1 #-1 because AoC starts counting at 0

