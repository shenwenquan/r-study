#四则运算
x = 1:5
(y = x ^ 2)
(y = matrix(1:16, 4, 4))
(z = y ^ 2)


(x = 1:5)
(y = 11:15)
(x + y)

#逻辑运算
y >= 13

ifelse(x %% 2 == 0, 'A', 'B')


#apply家族：可将运算应用于某一维度上
#apply,sapply,lappy,mappy,tapply

x = data.frame(
  pv = rnorm(100, 20, 3),
  uv = rnorm(100, 40, 4),
  ip = runif(100, 40, 50)
)
x

apply(x, MARGIN = 2, mean)
apply(x, MARGIN = 2, quantile, probs = c(0.1, 0.5, 0.9))
