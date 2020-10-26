if(!require(pacman)) install.packages("pacman"); library(pacman)
p_load(readxl,tidyverse)
Case_SinceApr <- read_excel("Case-Law/0420-1026_RelatedToPendemic.xls")


## 四月后，和疫情有关的案件案由种类、倒序
catagory<-Case_SinceApr%>%
  group_by(案由)%>%
  summarise(n())%>%
  arrange(desc(`n()`))

#合同纠纷，执行


### 二月诈骗
Case_Fraud <- read_excel("Case-Law/0129-1026_Fraud.xls")
Case_Fraud_A<-Case_Fraud%>%
  group_by(案由)%>%
  summarise(n())%>%
  arrange(desc(`n()`))

### 二月制假售假
Case_FakeProduct <- read_excel("Case-Law/0129-1026_FakeProducts.xls")
Case_FakeProduct_A <-Case_FakeProduct%>%
  group_by(案由)%>%
  summarise(n())%>%
  arrange(desc(`n()`))


### 二月哄抬物价
Case_PriceGouging <- read_excel("Case-Law/0129-1026_PriceGouge.xls")
Case_PriceGouging_A <-Case_PriceGouging%>%
  group_by(案由)%>%
  summarise(n())%>%
  arrange(desc(`n()`))

