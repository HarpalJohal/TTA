# R Additional Homework Tasks
#Write an R program to create three vectors a, b, c with 5 integers. 
#Combine the three vectors to become a 3×5 matrix where each column represents a vector.
#Print the content of the matrix. 
#Plot a graph and label correctly.
#Create  Vectors
X <- c(1, 2, 3, 4, 5)
Y <- c(2, 4, 6, 8, 10)
Z <- c(3, 6, 12, 15, 18)
#create matrix

XYZ = c(X, Y, Z)

XYZmatrix = matrix(XYZ, 
                   nrow= 3, #number of rows
                   ncol= 5, # number of columns 
                   byrow = TRUE) # fill matrix by rows 

XYZmatrix  
#plot graph
plot (XYZ, type='b',col = 'blue', xlab = ' ', ylab = ' ', pch=1)
#add range
axis(1, at = 1:15)
axis(2, at = 1:20)


#add title
title (xlab = 'Matrix Position Ref', col = 'blue', 
       ylab = 'Matrix value', col = 'green',
       main = 'XYZ matrix', col = 'red')

#Write a R program to create a Data frames which contain details of 5 employees 
# and display the details.  (Name, Age, Role and Length of service). 

Employees = data.frame(Name=c('Posh Spice',
                              'Ginger Spice',
                              'Baby Spice', 
                              'Sporty Spice',
                              'Scary Spice'),
                       Age=c(43,42,40,43,41),
                       Role=c('Fashion Designer',
                              'Baker',
                              'Presenter',
                              'Fitness Instructor',
                              'Security Manager'),
                       LengthOfService=c(11,7,8,15,6)
)
print('Employee Details: ') 
print(Employees)
print(summary(Employees))
#Import the GGPLOT 2 library and plot a graph using the qplot function. 
#X axis is the sequence of 1:20 and the y axis is the x ^ 2.  
#Label the graph appropriately. install.packages("ggplot2", dependencies = TRUE)

data(package = .packages(all.available = TRUE)) 

install.packages('ggplot2',dependencies = TRUE)

library(ggplot2)
data(package = 'ggplot2')


# specify the data
x <- c(1:20)
y <- x^2


# plot x vs. y
plot(x, y,type='b', pch=21, col='red',
     xlab= ' ', ylab=' ')


axis(1, at=x,labels=x, col.axis="blue")

axis(2, at=x^2,labels=round(y,digits=2),
     col.axis="green", las=2, cex.axis=0.7, tck=-.01)

# add a main title and bottom and left axis labels
title("An Example of Plotted Graph", xlab="X Values",
      ylab="X Squared")

# Create a simple bar plot of five subjects
marks = c(69, 95, 78, 74, 82)
barplot(marks,
        main = 'Comparing results of 5 subjects',
        xlab = 'Marks',
        ylab = 'Subject',
        names.arg = c('English', 'Maths', 'Science', 'Geography', 'History'),
        col = 'blue')

#Write a R program to take input from the user (name and 
# age) and display the values. 
name = readline(prompt='Enter your name: ')
age =  readline(prompt='Enter your age: ')
print(paste('My name is',name, 'and I am',age ,'years old.'))

#Write a R program to create a sequence of numbers from 20 
#to 50 and find the mean of numbers from 20 to 50 and sum 
#of numbers.
my_seq <- seq(20, 50)
print('Sequence of numbers from 20 to 50:')
print(my_seq)
print('Mean of numbers from 20 to 50:')
print(mean(my_seq))
print('Sum of numbers from 20 to 50')
print(sum(my_seq))
