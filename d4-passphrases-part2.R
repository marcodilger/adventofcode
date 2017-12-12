# read in data, compare unique entries vs total entries per row
# sum up every occurence of only unique strings

# part2: split each password into single letters, sort and re-join, then run anaylsis of part1

phrases <- readLines("data/d4-passphrases.txt")
phrases <- strsplit(phrases, " ")

sortString <- function(inString){ #rearranges a string by sorting its characters
  SplitString <- unlist(strsplit(inString, split=""))
  SortedString <- paste(sort(SplitString), collapse="")
  return(SortedString)
}

phrases <- lapply(phrases, function(x) unname(sapply(x, sortString)))

UniquePhrases <- lapply(phrases, unique)
PhrasesDiff <- sapply(phrases, length) - sapply(UniquePhrases, length)

Result <- sum(PhrasesDiff == 0)
print(Result)
