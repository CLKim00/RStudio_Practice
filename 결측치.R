df <- data.frame(sex = c("M", "F", NA, "M", "F"),
                 score = c(5, 4, 3, 4, NA))
df

is.na(df)                                                 # 결측치 확인

table(is.na(df))                                          # 결측치 빈도 출력

table(is.na(df$sex))                                      # sex 결측치 빈도 출력

table(is.na(df$score))                                    # score 결측치 빈도 출력

mean(df$score)                                            # 평균 산출
sum(df$score)                                             # 합계 산출

library(dplyr)                                            # dplyr 패키지 로드
df %>% filter(is.na(score))                               # score가 NA인 데이터만 출력

df %>% filter(!is.na(score))                              # score 결측치 제거

df_nomiss <- df %>% filter(!is.na(score))                 # score 결측치 제거
mean(df_nomiss$score)                                     # score 평균 산출
sum(df_nomiss$score)                                      # score 합계 산출

df_nomiss <- df %>% filter(!is.na(score) & !is.na(sex))   # score, sex 결측치 제거
df_nomiss

df_nomiss2 <- na.omit(df)                                 # 모든 변수에 결측치 없는 데이터 추출
df_nomiss2
