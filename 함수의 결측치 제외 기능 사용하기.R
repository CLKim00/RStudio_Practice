mean(df$score, na.rm = T)                                   # 결측치 제외하고 평균 산출
sum(df$score, na.rm = T)                                    # 결측치 제외하고 합계 산출

exam <- read.csv("csv_exam.csv")                            # 데이터 불러오기
exam[c(3, 8, 15), "math"] <- NA                             # 3, 8, 15행의 math에 NA 할당
exam

exam %>% summarise(mean_math = mean(math))                  # math 평균 산출

# math 결측치 제외하고 평균 산출
exam %>% summarise(mean_math = mean(math, na.rm = T))

exam %>% summarise(mean_math = mean(math, na.rm = T),       # 평균 산출
                   sum_math = sum(math, na.rm = T),         # 합계 산출
                   median_math = median(math, na.rm = T))   # 중앙값 산출

