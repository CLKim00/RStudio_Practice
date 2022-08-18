library(dplyr)

exam %>% arrange(math)         # math 오름차순 정렬

exam %>%  arrange(desc(math))  # math 내림차순 정렬

exam %>% arrange(class, math)  # class 및 math 오름차순 정렬
