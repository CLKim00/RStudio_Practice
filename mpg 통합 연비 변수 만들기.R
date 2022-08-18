mpg$total <- (mpg$cty + mpg$hwy)/2   # 통합 연비 변수 생성
head(mpg)

mean(mpg$total)                      # 통합 연비 변수 평균균