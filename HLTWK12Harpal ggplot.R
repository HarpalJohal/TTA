data(package = .packages(all.available = TRUE)) 
# 
data() 
# 
data(package = 'ggplot2')

install.packages('ggplot2')

library(ggplot2)
data(package = 'ggplot2')

?economics
ggplot2::economics
qplot(data=economics,x=date,y=unemploy,geom='point')


?txhousing
ggplot2::txhousing
qplot(data=txhousing, x=date, y=sales, geom='point',color=city)
qplot(data=txhousing, y=city, geom='bar', fill=city)

?mpg
ggplot2::mpg
qplot(data=mpg,x=cty,y=hwy,geom='point',color=class)

?diamonds
ggplot2::diamonds
qplot(data=diamonds,y=clarity,geom='bar', fill=cut)
