library(tidyverse)
library(readxl)
library(Hmisc)

D1 <- read_excel("E:/Gokul/Stec/AnasTEC/PNR 1.xlsx", 
                 sheet = "30-4-19")
D2 <- read_excel("E:/Gokul/Stec/AnasTEC/PNR 1.xlsx", 
                 sheet = "1-5-19")
D3 <- read_excel("E:/Gokul/Stec/AnasTEC/PNR 1.xlsx", 
                 sheet = "2-5-19")
D4 <- read_excel("E:/Gokul/Stec/AnasTEC/PNR 1.xlsx", 
                 sheet = "3-5-19")
D5<- read_excel("E:/Gokul/Stec/AnasTEC/PNR 1.xlsx", 
                sheet = "4-5-19")
D6 <- read_excel("E:/Gokul/Stec/AnasTEC/PNR 1.xlsx", 
                 sheet = "5-5-19")
D7 <- read_excel("E:/Gokul/Stec/AnasTEC/PNR 1.xlsx", 
                 sheet = "6-5-19")
D8 <- read_excel("E:/Gokul/Stec/AnasTEC/PNR 1.xlsx", 
                 sheet = "7-5-19")  
D9 <- read_excel("E:/Gokul/Stec/AnasTEC/PNR 1.xlsx", 
                 sheet = "8-5-19")
D10 <- read_excel("E:/Gokul/Stec/AnasTEC/PNR 1.xlsx", 
                  sheet = "9-5-19")
D11 <- read_excel("E:/Gokul/Stec/AnasTEC/PNR 1.xlsx", 
                  sheet = "10-5-19")   
D12 <- read_excel("E:/Gokul/Stec/AnasTEC/PNR 1.xlsx", 
                  sheet = "11-5-19")
D13 <- read_excel("E:/Gokul/Stec/AnasTEC/PNR 1.xlsx", 
                  sheet = "12-5-19")
D14 <- read_excel("E:/Gokul/Stec/AnasTEC/PNR 1.xlsx", 
                  sheet = "13-5-19")
D15 <- read_excel("E:/Gokul/Stec/AnasTEC/PNR 1.xlsx", 
                  sheet = "14-5-19")
df3 <- 
  D1 %>% 
  mutate(id = "30-4-19") %>% 
  bind_rows(D2 %>% mutate(id = "1-5-19")) %>% 
  bind_rows(D3 %>% mutate(id = "2-5-19")) %>% 
  bind_rows(D4 %>% mutate(id = "3-5-19")) %>% 
  bind_rows(D5 %>% mutate(id = "4-5-19")) %>% 
  bind_rows(D6 %>% mutate(id = "5-5-19")) %>% 
  bind_rows(D7 %>% mutate(id = "6-5-19")) %>% 
  bind_rows(D8 %>% mutate(id = "7-5-19")) %>% 
  bind_rows(D9 %>% mutate(id = "8-5-19")) %>% 
  bind_rows(D10 %>% mutate(id = "9-5-19")) %>% 
  bind_rows(D11 %>% mutate(id = "10-5-19")) %>% 
  bind_rows(D12 %>% mutate(id = "11-5-19")) %>% 
  bind_rows(D13 %>% mutate(id = "12-5-19")) %>% 
  bind_rows(D14 %>% mutate(id = "13-5-19")) %>% 
  bind_rows(D15 %>% mutate(id = "14-5-19")) %>% 
  mutate(Date = factor(lubridate::dmy(id)))

ggplot(df3, aes(x = Time, y = Stec))+ 
  geom_line(aes(color = Date, group = Date),size=0.5)+
    xlab('Time') +
    ylab('Stec') +
    scale_x_continuous(breaks = seq(from = 0, to = 15, by = 0.20))+
  theme_classic()+
  theme(axis.line.x = element_line(colour = 'black', size=0.5, linetype='solid'),
        axis.line.y = element_line(colour = 'black', size=0.5, linetype='solid'))