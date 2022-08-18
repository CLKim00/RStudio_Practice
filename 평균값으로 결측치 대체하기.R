mean(exam$math, na.rm = T)                           # 결측치 제외하고 math 평균 산출

exam$math <- ifelse(is.na(exam$math), 55, exam$math) # math가 NA면 55로 대체
table(is.na(exam$math))                              # 결측치 빈도표 생성

exam

mean(exam$math)