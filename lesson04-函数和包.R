myadd = function(a, b, c) {
  #如果函数没有返回值，默认会把函数的最后一行的结果作为返回结果返回
  return(a + b + c)
}

myadd(1, 2, 3)

#
mystat = function(x, na.omit = FALSE) {
  if (na.omit) {
    x = x[!is.na(x)]
  }
  m = mean(x)
  n = length(x)
  s = sd(x)
  skew = sum((x - m) ^ 3 / s ^ 3) / n
  return(list(
    n = n,
    mean = m,
    stdev = s,
    skew = skew
  ))
}

mystat(rnorm(1000, 10, 2))

#加载函数:

#source('E:/function.r')


#查看源码
page(mystat)


#包安装和加载
install.packages('abc')
library(abc)



