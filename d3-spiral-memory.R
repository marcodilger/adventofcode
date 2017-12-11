# determine "levels", then determine position in level,
# manahttan distance is (distance to middle of each side (formula needed) + level

input <- 265149

GridLength <- (ceiling(sqrt(input)) %/% 2 )*2 + 1 # smallest grid that contains the input number, div 2 + 1 to make sure its odd
GridLevel <- (GridLength-1)/2 #level of the Grid, starting with 0
GridMax <- GridLength^2 # Highest number in the Grid with sidelength gridlength
Dist2Max <- GridMax - input
Dist2Corner <- Dist2Max %% GridLength
Dist2Middle <- abs(GridLevel - Dist2Corner) #Distance from input value to the nearest side-middle

Result <- Dist2Middle+GridLevel
print(Result)
