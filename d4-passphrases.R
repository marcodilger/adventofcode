#read in data, compare unique entries vs total entries per row
# sum up every occurence of only unique strings

phrases <- readLines("data/d4-passphrases.txt")
phrases <- strsplit(phrases, " ")


UniquePhrases <- lapply(phrases, unique)
PhrasesDiff <- sapply(phrases, length) - sapply(UniquePhrases, length)

Result <- sum(PhrasesDiff == 0)
print(Result)
