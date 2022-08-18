install.packages("readxl")
library(readxl)

df_exam <- read_excel("excel_exam.xlsx")  # 엑셀 파일을 불러와 df_exam에 할당
df_exam                                   # 출력

# 분석하기
mean(df_exam$english)

mean(df_exam$science)

# 엑셀 파일 첫 번째 행이 변수명이 아니라면?
df_exam_novar <- read_excel("excel_exam_novar.xlsx")
df_exam_novar

df_exam_novar <- read_excel("excel_exam_novar.xlsx", col_names = F)
df_exam_novar

# 엑셀 파일에 시트가 여러 개 있다면?
df_exam_sheet <- read_excel("excel_exam_sheet.xlsx", sheet = 3)