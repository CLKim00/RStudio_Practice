exam %>% summarise(mean_math = mean(math))    # math 평균 산출

exam %>% 
  group_by(class) %>%                         # class별로 분리
  summarise(mean_math = mean(math))           # math 평균 산출  

exam %>% 
  group_by(class) %>%                         # class별로 분리
  summarise(mean_math = mean(math),           # math 평균
            sum_math = sum(math),             # math 합계
            median_math = median(math),       # math 중앙값
            n = n())                          # 학생 수

mpg %>%                                       # 회사별, 구동 방식별 분리
  group_by(manufacturer, drv) %>%             # cty 평균 산출
  summarise(mean_cty = mean(cty)) %>%         # 일부 출력력
  head(10)