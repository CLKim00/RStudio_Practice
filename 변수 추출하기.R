exam %>% select(math)                  # math 추출

exam %>% select(english)               # english 추출

exam %>% select(class, math, english)  # class, math, english 변수 추출

exam %>% select(-math)                 # math 제외

exam %>% select(-math, -english)       # math, english 제외외