library("swirl")
swirl()

### Lesson 12 - Looking at Data ###
ls()
class(plants)
dim(plants)
nrow(plants)
ncol(plants)
object.size(plants)
names(plants)
head(plants)
head(plants, 10)
tail(plants, 15)
summar(plants)
table(plants$Active_Growth_Period)
str(plants)

### Lesson 13 - Simulation ###
?sample
sample(1:6, 4, replace = TRUE)
sample(1:6, 4, replace = TRUE)
sample(1:20, 10, FALSE)
LETTERS
sample(LETTERS)
flips <- sample(c(0,1), 100, replace = TRUE, prob = c(0.3, 0.7))
flips
sum(flips)
?rbinom
rbinom(1, size = 100, prob = 0.7)
flips2 <- rbinom(100, size = 1, prob = 0.7)
flips2
sum(flips2)
?rnorm
rnorm(10)
rnorm(10, mean = 100, sd = 25)
?rpois
rpois(5, 10)
my_pois <- replicate(100, rpois(5, 10))
my_pois
cm <- colMeans(my_pois)
hist(cm)

### Lesson 14 - Dates and Times ###
d1 <- Sys.Date()
class(d1)
unclass(d1)
d1
d2 <- as.Date("1969-01-01")
unclass(d2)
t1 <- Sys.time()
t1
class(t1)
unclass(t1)
t2 <- as.POSIXlt(Sys.time())
class(t2)
t2
str(unclass(t2))
t2$min
weekdays(d1)
months(t1)
quarters(t2)
t4 <- strptime(t3, "%B %d, %Y %H:%M")
t4
class(t4)
Sys.time() > t1
Sys.time() - t1
difftime(Sys.time(), t1, units = 'days')