mpg <- as.data.frame(ggplot2::mpg)                     # mpg 데이터 불러오기
mpg[c(65, 124, 131, 153, 212), "hwy"] <- NA            # NA 할당하기

# Q1 drv(구동 방식)별로 hwy(고속도로 연비) 평균이 어떻게 다른지 알아보려고 합니다. 분석을 하기 전에 우선 두 변수에 결측치가 있는지 확인해야 합니다. drv 변수와 hwy 변수에 결측치가 몇 개 있는지 알아보세요.
table(is.na(mpg$drv))
table(is.na(mpg$hwy))

# Q2 filter()를 이용해 hwy 변수의 결측치를 제외하고, 어떤 구동 방식의 hwy 평균이 높은지 알아보세요. 하나의 dplyr 구문으로 만들어야 합니다.
library(dplyr)
mpg_nomiss <- mpg %>% filter(!is.na(hwy)) %>% group_by(drv) %>% summarise(mean_hwy = mean(hwy, na.rm = T))
mpg_nomiss