# Q1
vec = c(5,10,15,25,30)
cat("Original vector: ", vec, '\n')
print(paste("The maximum value in the vector: ", max(vec)))
print(paste("The minimum value in the vector: ", min(vec)))


#-------------------------------------------------------------------------------
# Q2
fact <- function(){
  n = as.integer( readline("Enter a number to find its factorial: "))
  f = 1
  if(n < 0){
    print("Error! You entered a -ve number")
  } else if(n == 0){
    print(" The factorial of 0 is 1")
  } else{
    for(i in 1:n){
      f = f * i
  }
    print(paste("The factorial of ",n," is ",f))
  }
}

fact()

#-------------------------------------------------------------------------------
fact2 <- function(n){
  if(n<0){
    return (-1)
  }else if(n==0 || n==1){
    return(1)
  } else{
    return(n * fact2(n-1))
  }
}

n2 = as.integer( readline("Enter a number to find its factorial: "))
k = fact2(n2)
if(k!=-1){
  print(paste("The factorial of ",n2," is ",k))
} else{
  print("Error! You entered a -ve number")
}


#-------------------------------------------------------------------------------
# Q3
fibo <- function(){
  n = as.integer( readline("Enter the number of terms: "))
  p1 = 0
  p2 = 1
  cnt = 2
  if(n<=0){
    print("Error! You entered a -ve number")
  } else{
    if(n==1){
      print(p1)
    } else{
      cat(p1, p2, ' ')
      while(cnt<n){
        p3 = p1 + p2
        cat(p3, ' ')
        p1 = p2
        p2 = p3
        cnt = cnt + 1
      }
    }
  }
}

fibo()


#-------------------------------------------------------------------------------
# Q4 
cal <- function(){
  print("Available Options: ")
  print("1->Add")
  print("2->Subtract")
  print("3->Multiply")
  print("4->Divide")
  option = as.integer(readline(prompt="Select option[1/2/3/4]: "))
  n1 = as.integer(readline(prompt="Enter 1st number: "))
  n2 = as.integer(readline(prompt="Enter 2nd number: "))
  if(option == 1){
    return (n1+n2)
  } else if(option == 2){
    return (n1-n2)
  } else if(option == 3){
    return (n1*n2)
  } else if(option == 4){
    return (n1/n2)
  }
}

cal()


#-------------------------------------------------------------------------------
# Q5
q1 <- c(10, 20, 5, 5, 25)
q2 <- c("a1", "a2", "a3", "a4", "a5")
barplot(q1, xlab = "X Label", ylab = "Y Label", col = "blue", col.axis = "red", col.lab = "blue", names.arg = q2)


q2 <- c(200, 400, 250, 100, 40, 20)
names(q2) <- c("A1", "A2", "A3", "A4", "A5", "A6")
pie(q2, labels = names(q2), col = "white",main = "PIE CHART", radius = -1, col.main = "blue")

# taking input from dataset Orange already present in R
q3 <- Orange[, c('age', 'circumference')]
plot(x = q3$age, y = q3$circumference, xlab = "Age",
     ylab = "Circumference", main = "Age VS Circumference",
     col.lab = "blue", col.main = "blue",
     col.axis = "blue")
