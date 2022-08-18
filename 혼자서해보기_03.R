#mpg 데이터의 변수명은 긴 단어를 짧게 줄인 축약어로 되어 있습니다. cty 변수는 도시연비, hwy 변수는 고속도로 연비를 의미합니다. 변수명을 이해하기 쉬운 단어로 바꾸려고 합니다. mpg 데이터를 이용해 아래 문제를 해결해 보세요.

# Q1 ggplot2() 패키지의 mpg 데이터를 사용할 수 있도록 불러온 후 복사본을 만드세요.
mpg <- as.data.frame(ggplot2::mpg)
mpg_new <- mpg

# Q2 복사본 데이터를 이용해 cty는 city로, hwy는 highway로 수정하세요.
mpg_new <- rename(mpg_new, city = cty, highway = hwy)
mpg_new

# Q3 데이터 일부를 출력해 변수명이 바뀌었는지 확인해 보세요. 아래와 같은 결과물이 출력되어야 합니다. 
head(mpg_new)