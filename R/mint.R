library(MInt)

x <- system.file("extdata", "x.txt", package="MInt");
y <- system.file("extdata", "y.txt", package="MInt");

xtab <- read.csv(x, sep = "\t")
ytab <- read.csv(y, sep = "\t")

m <- mint(y,x,fmla = ~feature1 + feature2)
est <- estimate(m)

# Not exported yet
# bootstrap(est, nboot = 10, seed = 1)

