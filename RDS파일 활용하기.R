# 데이터 프레임을 RDS 파일로 저장하기
saveRDS(df_midterm, file = "df_midterm.rds")

# RDS 파일 불러오기
rm(df_midterm)                               # 데이터 삭제

df_midterm                                   # 에러 메시지 출력

df_midterm <- readRDS("df_midterm.rds")      # 앞에서 저장한 파일을 불러와 할당
df_midterm