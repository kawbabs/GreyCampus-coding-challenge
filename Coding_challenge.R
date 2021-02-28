# Use mtcars dataset and create a box plot comparing cylinder with mpg
mtcars
boxplot(mtcars$mpg~ mtcars$cyl)

# Use mtcars data set create a histogram of mpg

hist(mtcars$mpg,xlab = "mpg",col = "yellow",border = "blue")

# Use airquality dataset and calculate NAs in each column
airquality
col_na = colSums(is.na(airquality))
col_na
# Please check month column of airquality dataset, convert it into factor
str(airquality)
airquality$Month = as.factor(airquality$Month)


# Use gapminder dataset and calculate mean and median by continent
install.packages('gapminder')
str(gapminder)
library(dplyr)
library(ggplot2)

View(gapminder %>% 
       group_by(continent) %>%
       summarize(mean(lifeExp),
                 median(lifeExp)))

