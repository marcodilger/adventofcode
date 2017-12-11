# for part2: identify in each line the two numbers that divide evenly
# then divide them and add up the results

# each row contains only two such numbers

data <- read.delim(file = "data/d2-corr-checksum.txt", sep="\t", header = F)

findDivisibles <- function(inVector){ #returns c(dividend, divisor) of first divisible in inVector
  found <- FALSE
  i <- 1
  while (!found && i <= length(inVector)) # outer loop
  {
    j <- 1
    while (!found && j <= length(inVector)) #inner loop
    {
      if (((inVector[i] %% inVector[j]) == 0) && ((inVector[i] / inVector[j]) > 1)){
        outVector <- c(inVector[i], inVector[j])
        found <- TRUE
      } else {
        j <- j + 1
      }
    }
    i <- i + 1
  }
  return(outVector)
}

divisibles <- apply(data, 1, findDivisibles)
quotients <- divisibles[1,]/divisibles[2,]

Result <- sum(quotients)
print(Result)
