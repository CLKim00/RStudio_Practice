fuel <- data.frame(fl = c("c", "d", "e", "p", "r"),
                   price_fl = c(2.35, 2.38, 2.11, 2.76, 2.22))
fuel  # 출력

# Q1 mpg 데이터에는 연료 종류를 나타낸 f1 변수는 있지만 연료 가격을 나타낸 변수는 없습니다. 위에서 만든 fuel 데이터를 이용해 mpg 데이터에 price_f1(연료 가격) 변수를 추가하세요.
mpg <- left_join(mpg, fuel, by = "fl")
mpg

# Q2 연료 가격 변수가 잘 추가됐는지 확인하기 위해 model, fl, price_fl 변수를 추출해 앞부분 5행을 출력해 보세요.
mpg %>% select(model, fl, price_fl) %>% head(5)

mpg <- subset(mpg, select=-c(price_fl.x, price_fl.y))