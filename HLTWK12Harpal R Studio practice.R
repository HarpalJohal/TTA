print("hello world")
# variables 
name<-'Harps'
print(name)
surname = 'Singh'
'Kaur' -> middle
# concat 
print(paste(name, middle, surname))
# readline 
name <- readline('Enter your name: ')
hello <- paste ('Welcome', name, '!')
# data types
Title <- 'Women in Data'
Type <- paste('Type of title:', typeof(title))
print(Type) 
pi<- 3.1415
dozen <- 12L
print(paste('Type of pi:', typeof(pi)))
print(paste('Type of dozen:', typeof(dozen)))
flag <-T
print(paste( 'is flag logical:', is.logical(flag)))
#Vectors
day = c('Mon', 'Tues', 'Weds')
day[4] = 'Thurs'
day[5] = 'Fri' 
length(day)
info <- list( age=21, weight=61.2, name='Lisa', female=TRUE) 
airport.codesUK <-list ('Birmingham' = 'BHX', 
                        'London Heathrow ' = 'LHR', 
                        'Bristol' = 'BRS', 
                        'Manchester' = 'MAN',
                        'London Gatwick' = 'GTW') 
airport.dubai <-'DBX'
airport.sanfran <-'SFO'
# Arithmetic
Large <- 13
Small<- 2
print ( paste('Addition:', Large + 
                 Small))
( paste('Subtraction:', Large - 
          Small))
( paste('Multiplication:', Large * 
          Small))
( paste('Division:', Large / 
          Small))
( paste('Integer Divison:', Large %/% 
          Small))
( paste('Exponention', Large ^ 
          Small))
( paste('Modulus:', Large %% 
          Small))

