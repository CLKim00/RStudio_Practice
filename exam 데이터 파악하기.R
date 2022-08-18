exam <- read.csv("csv_exam.csv")

head(exam)      # 앞에서부터 6행까지 출력

head(exam, 10)  # 앞에서부터 10행까지 출력

tail(exam)      # 뒤에서부터 6행까지 출력

tail(exam, 10)  # 뒤에서부터 10행까지 출력

View(exam)      # 데이터 뷰어 창에서 exam 데이터 확인

dim(exam)       # 행, 열 출력

str(exam)       # 데이터 속성 확인

summary(exam)   # 요약 통계량 출력