# starting with string, split, vectorized solution by
#    - subtracting string[x]-string[x+1]
#    - add positions where diff is 0

# part 2: shift second list by half length of original list


Captcha <- as.numeric(strsplit(readLines("data/d1-inv-captcha.txt"), "")[[1]])
CaptchaFollower <- c(tail(Captcha, length(Captcha)/2), head(Captcha, length(Captcha)/2))
CaptchaDiff <- Captcha - CaptchaFollower

Result <- sum(CaptchaFollower[CaptchaDiff==0])
print(Result)
