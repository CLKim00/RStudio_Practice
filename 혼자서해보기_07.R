# Q1 mpg() 데이터 복사본을 만들고, cty와 hwy를 더한 '합산 연비 변수'를 추가하세요.
mpg_copy <- mpg
mpg_copy <- mpg_copy %>% mutate(sum = cty + hwy)
mpg_copy

# Q2 앞에서 만든 '합산 연비 변수'를 2로 나눠 '평균 연비 변수'를 추가하세요.
mpg_copy <- mpg_copy %>% mutate(avg = (cty + hwy)/2)
mpg_copy

# Q3 '평균 연비 변수'가 가장 높은 자동차 3종의 데이터를 출력하세요.
mpg_copy %>% arrange(desc(avg)) %>% 
  head(3)

# Q4 1~3번 문제를 해결할 수 있는 하나로 연결된 dplyr 구문을 만들어 실행해 보세요. 데이터는 복사본 대신 mpg 원본을 이용하세요.
mpg %>% mutate(sum = cty + hwy,
               avg = (cty + hwy)/2) %>% 
  arrange(desc(avg)) %>% 
  head(3)