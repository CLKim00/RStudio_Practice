# Q1 class(자동차 종류)가 "compact", "subcompact", "suv"인 자동차의 cty(도시 연비)가 어떻게 다른지 비교해 보려고 합니다. 세 차종의 cty를 나타낸 상자 그림을 만들어 보세요.
library(dplyr)
cty_mpg <- mpg %>% filter(class %in% c("compact", "subcompact", "suv"))
ggplot(data = cty_mpg, aes(x = class, y = cty)) + geom_boxplot()