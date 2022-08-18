# Q1 mpg 데이터의 class는 "suv", "compact"등 자동차를 특징에 따라 일곱 종류로 분류한 변수입니다. 어떤 차종의 도시 연비가 높은지 비교해 보려고 합니다. class별 cty평균을 구해 보세요.
mpg %>% group_by(class) %>% 
  summarise(mean_cty = mean(cty)) %>% 
  head

# Q2 앞 문제의 출력 결과는 class 값 알파벳 순으로 정렬되어 있습니다. 어떤 차종의 도시 연비가 높은지 쉽게 알아볼 수 있도록 cty평균이 높은 순으로 정렬해 출력하세요. 
mpg %>% group_by(class) %>% 
  summarise(mean_cty = mean(cty)) %>%
  arrange(desc(mean_cty))
  head
  
# Q3 어떤 회사 자동차의 hwy(고속도로 연비)가 가장 높은지 알아보려고 합니다. hwy 평균이 가장 높은 회사 세 곳을 출력하세요.
mpg %>% group_by(class) %>% 
  summarise(mean_hwy = mean(hwy)) %>%
  arrange(desc(mean_hwy))
  head(3)
  
# Q4 어떤 회사에서 "compact"(경차) 차종을 가장 많이 생산하는지 알아보려고 합니다. 각 회사별 "compact"차종 수를 내림차순으로 정렬해 출력하세요.
mpg %>% group_by(manufacturer) %>%
  filter(class == "compact") %>% 
  summarise(count = n()) %>% 
  arrange(desc(count)) %>% 
  head