install.packages("ggplot2")
library(dplyr)
library(ggplot2)
midwest <- as.data.frame(ggplot2::midwest)

midwest <- midwest %>% mutate(popteens = (poptotal-popadults)/poptotal*100)

midwest %>% arrange(desc(popteens)) %>% select(county, popteens) %>% head(5)

midwest <- midwest %>% mutate(popteens_class = ifelse(popteens >= 40, "large",
                                                      ifelse(popteens >= 30, "middle", "small")))

midwest %>% group_by(popteens_class) %>% summarise(n = n())

midwest %>% mutate(per_asian = popasian/poptotal*100) %>% arrange(per_asian) %>% select(state, county, per_asian) %>% head(10)