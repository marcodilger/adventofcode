# --- Day 5: A Maze of Twisty Trampolines, All Alike ---
# straightforward: generate a vector from input file, then jump along as spec'd

jumps <- unlist(read.delim("data/d5-trampolines.txt", header = FALSE))

count <- 0
pos <- 1
while (pos <= length(jumps)) {
  newpos <- pos + jumps[pos] # do the jump
  jumps[pos] <- jumps[pos] + 1 # increase old jumping base
  pos <- newpos
  count <- count + 1 # increase jump count
}
print(count)
