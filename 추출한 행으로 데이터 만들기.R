class1 <- exam %>% filter(class == 1)   # class가 1인 행 추출, class1에 할당
class2 <- exam %>% filter(class == 2)   # class가 2인 행 추출, class2에 할당

mean(class1$math)                       # 1반 수학 점수 평균 구하기
mean(class2$math)                       # 2반 수학 점수 평균 구하기