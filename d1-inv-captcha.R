# starting with string, split, vectorized solution by
#    - subtracting string[x]-string[x+1]
#    - add positions where diff is 0


Captcha <- as.numeric(strsplit(readLines("data/d1-inv-captcha.txt"), "")[[1]])
CaptchaFollower <- c(Captcha[-1],Captcha[1])
CaptchaDiff <- Captcha - CaptchaFollower

Result <- sum(CaptchaFollower[CaptchaDiff==0])
print(Result)
