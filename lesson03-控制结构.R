#paste函数表示可以将不同的类型的数据放在一起
#eg：
#p <-paste("b",1:5,sep="f")
#输出为： "bf1" "bf2" "bf3" "bf4" "bf5"
(Brand = paste(c('Brand'), 1:9, sep = ''))
(PName = paste(c('Dell'), 1:9, sep = ''))
#rep函数控制元素重复次数
(Mem = rep(c('1G', '2G', '4G'), times = 3))
(Feq = rep(c('2.2G', '2.8G', '3.3G'), each = 3))
(Price = rep(c(1000, 2000, 5000), 3))

PC = data.frame(Brand, PName, Mem, Feq, Price)
PC

PC$PD = rep('Cheap', 9)
PC


#if else 结构
#1:nrow(PC) 表示构造一个 1:9 的vector
for (i in 1:nrow(PC)) {
  if (PC[i, 'Price'] > 3000) {
    PC[i, 'PD'] = 'Expensive'
  }
}

PC


#ifelse函数
PC$PD2 = ifelse(PC$Price>3000,'Expensive','Cheap')
PC


#循环结构

for(x in 1:5){
  print (x^2)
}

i = 1
while(i<6){
  print(i^2)
  i=i+1
}

#用break/next结束循环或当前循环
i=1
repeat{
  print(i^2)
  i=i+1
  if(i>5) break
}
