exam %>% 
  mutate(total = math + english + science) %>%     # 총합 변수 추가
  head                                             # 일부 추출

exam %>% 
  mutate(total = math + english + science,         # 총합 변수 추가
         mean = (math + english + science)/3) %>%  # 총평균 변수 추가
  head                                             # 일부 추출

exam %>% 
  mutate(test = ifelse(science >= 60, "pass", "fail")) %>% 
  head

exam %>% 
  mutate(total = math + english + science) %>%     # 총합 변수 추가
  arrange(total) %>%                               # 총합 변수 기준 정렬
  head                                             # 일부 추출