# 1, 3, 5반에 해당하면 추출
exam %>% filter(class == 1 | class == 3 | class == 5)

exam %>% filter(class %in% c(1, 3, 5))   # 1, 3, 5반에 해당하면 추출