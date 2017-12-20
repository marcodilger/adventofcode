# --- Day 6: Memory Reallocation ---

# read in data as vector,
# loop while current state is not in list: append current state to list
# identify minimum, set minimum to 0, distribute over Vector, save state
# entries in list is the number of redistribution cycles

banks <- unname(unlist(read.delim("data/d6-memory-realloc.txt", header = FALSE, sep = "\t")))
banksLength <- length(banks)

library(hash)
states <- hash()

hash(a=temp)
temp <- deparse(c("a","b"))

states <- list(banks)


repeat {

  pos <- which.max(banks)
  distrValue <- banks[pos]
  banks[pos] <- 0
  while (distrValue > 0)
  {
    if (pos == banksLength) {
      pos <- 1
    } else {
      pos <- pos + 1
    }
    banks[pos] <- banks[pos] + 1
    distrValue <- distrValue - 1
    #print(banks)
  }


  if (list(banks) %in% states) {
    break
  } else {
    states <- c(states, list(banks)) #fehler
  }
}

print(length(states))

