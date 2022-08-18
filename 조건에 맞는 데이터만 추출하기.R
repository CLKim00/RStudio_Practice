library(dplyr)
exam <- read.csv("csv_exam.csv")
exam

# exam에서 class가 1인 경우만 추출해 출력
exam %>% filter(class == 1)

# 2반인 경우만 추출
exam %>% filter(class == 2)

exam %>% filter(class != 1)   # 1반이 아닌 경우

exam %>% filter(class != 3)   # 3반이 아닌 경우