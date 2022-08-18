# Q1 mpg데이터는 11개 변수로 구성되어 있습니다. 이 중 일부만 추출해 분석에 활용하려고 합니다. mpg데이터에서 class(자동차 종류), cty(도시 연비)변수를 추출해 새로운 데이터를 만드세요. 새로 만든 데이터의 일부를 출력해 두 변수로만 구성되어 있는지 확인하세요.
mm <- mpg %>% select(class, cty) 
head(mm)

# Q2 자동차 종류에 따라 도시 연비가 다른지 알아보려고 합니다. 앞에서 추출한 데이터를 이용해 class(자동차 종류)가 "suv"인 자동차와 "compact"인 자동차 중 어떤 자동차의 cty(도시 연비)평균이 더 높은지 알아보세요.
a <- mm %>% filter(class == "suv")
b <- mm %>% filter(class == "compact")

mean(a$cty)
mean(b$cty)