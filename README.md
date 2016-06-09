# nicetitle
Rstudio Addin - create boxed title in an Rscript

## Installation

```R
# install.packages("devtools")
devtools::install_github("ThinkRstat/nicetitle")
```
## usage

![alt tag](https://raw.githubusercontent.com/ThinkRstat/nicetitle/master/demo.gif)



```R
# write a sentense, select it an go in Addins > Nice Title

# Part One

1+1
plot(iris)

# Part Two
lm(1~1)

will be transformed as :

############################################################
#                                                          #
#                         Part One                         #
#                                                          #
############################################################

1+1
plot(iris)

############################################################
#                                                          #
#                         Part Two                         #
#                                                          #
############################################################

lm(1~1)

```
