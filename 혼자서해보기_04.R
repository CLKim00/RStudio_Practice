# Q1 자동차 배기량에 따라 고속도로 연비가 다른지 알아보려고 합니다. displ(배기량)이 4 이하인 자동차와 5 이상인 자동차 중 어떤 자동차의 hwy(고속도로 연비)가 평균적으로 높은지 알아보세요.
mpg <- as.data.frame(ggplot2::mpg)

mpg1 <- mpg %>% filter(displ <= 4)
mpg2 <- mpg %>% filter(displ >= 5)

mean(mpg1$hwy)
mean(mpg2$hwy)

# Q2 자동차 제조 회사에 따라 도시 연비가 다른지 알아보려고 합니다. "audi"와 "toyota"중 어느 manufacturer(자동차 제조 회사)의 cty(도시 연비)가 평균적으로 높은지 알아보세요.
manu1 <- mpg %>% filter(manufacturer == "audi")
manu2 <- mpg %>% filter(manufacturer == "toyota")

mean(manu1$cty)
mean(manu2$cty)

# Q3 "chevrolet", "ford", "honda" 자동차의 고속도로 연비 평균을 알아보려고 합니다. 이 회사들의 데이터를 추출한 후 hwy 전체 평균을 구해 보세요.
manu3 <- mpg %>% filter(manufacturer == "chevrolet")
manu4 <- mpg %>% filter(manufacturer == "ford")
manu5 <- mpg %>% filter(manufacturer == "honda")

mean(c(manu3$hwy, manu4$hwy, manu5$hwy))

manu6<- mpg %>% filter(manufacturer %in% c("chevrolet", "ford", "honda"))

mean(manu6$hwy)
