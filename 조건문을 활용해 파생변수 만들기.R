# 기준값 정하기
summary(mpg$total)                                   #요약 통계량 산출

hist(mpg$total)                                      # 히스토그램 생성

# total 연비의 평균과 중앙값이 약 20이다.
# total 연비가 20~25 사이에 해당하는 자동차 모델이 가장 많다.
# 대부분 25 이하이고, 25를 넘기는 자동차는 많지 않다.

# 합격 판정 변수 만들기
mpg$test <- ifelse(mpg$total >= 20, "pass", "fail")  # 20 이상이면 pass, 그렇지 않으면 fail 부여

head(mpg, 20)

# 빈도표로 합격 판정 자동차 수 살펴보기
table(mpg$test)                                      # 연비 합격 빈도표 생성

# 막대 그래프로 빈도 표현하기
library(ggplot2)                                     # ggplot2 로드
qplot(mpg$test)                                      # 연비 합격 빈도 막대 그래프 생성