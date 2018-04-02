#向量
(x=c(10,11,13,14))  #创建方法1
(x=1:10)  #创建方法二
(x=seq(5,by=2,length=8))#创建方法三
(y=seq(10,by=3,along.with = x))#创建方法四


(x[1:5]) #取1-5的数据
(x[seq(1,5,1)])#取从第一个开始，步长为1，连续取5个
(y[-5:-1])#取除了第一到第五的数据
(which(y>5))#返回大于5的数据下标
(y[which(y>5)])#返回大于5的数据


#因子
(x=c('a','a','b','o','ab','ab')) #创建一个向量
(x=factor(x))#将一个向量构造成一个因子
unclass(x)#查看因子内部结构

(x=factor(c('a','a','b','o','ab','ab'),levels=c('a','b','o','ab')))#指定级别
unclass(x)

(f2=gl(4,3,labels = c('blue','red','green','yellow')))# 4:有多少个级别 3：重复次数
unclass(f2)

