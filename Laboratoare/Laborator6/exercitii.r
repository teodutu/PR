print("==================== Ex1 ====================")
x = rnorm(20, mean=0, sd=1)
print(x)


print("==================== Ex2 ====================")
v1 = x[c(3, 5, 7, 11, 13, 19)]
print(v1)


print("==================== Ex3 ====================")
v2 = x[-c(1, 2, 3)]
print(v2)


print("==================== Ex4 ====================")
dice = sample(1:6, 4, TRUE)
print(dice)


print("==================== Ex5 ====================")
coinFlip = sample(0:1, 100, replace = TRUE, prob = c(0.3, 0.7))
print(coinFlip)
print("Tails ratio:")
print(sum(coinFlip) / length(coinFlip))


print("==================== Ex6 ====================")
l = list(a = 1:10, beta = exp(-3:3), logic = c(TRUE,FALSE,FALSE,TRUE))
print("The list is:")
print(l)

print("The means of its elements are:")
means = lapply(l, mean)
print(means)


print("==================== Ex7 ====================")
A = c(1:9)
B = c(1:12)
C = c(1:15)
my.lst = list(A,B,C)

print("The initial list is:")
print(my.lst)

print("The list multiplied by 2 is:")
lst.times2 = sapply(my.lst, function(x) { x * 2 })
print(lst.times2)
