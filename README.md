# nicetitle
RStudio AddIn - creates boxed titles in an Rscript

## Installation

```R
# install.packages("devtools")
devtools::install_github("ThinkRstat/nicetitle")
```
## usage

![alt tag](https://raw.githubusercontent.com/ThinkRstat/nicetitle/master/demo.gif)



```R
# write a sentence, highlight it and transform it into a nice title using Addins > Nice Title

# Part One

1+1
plot(iris)

# Part Two
lm(1~1)

will be transformed in :

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
