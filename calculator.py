def add(n1,n2):
    return n1+n2
def multiply(n1,n2):
    return n1*n2
def substract(n1,n2):
    return n1-n2
def divide(n1,n2):
    return n1/n2

operation={"+":add,"*":multiply,"-":substract,"/":divide}

fun=""
choice=input("Select an operation type:  + , * , / , -  :- ")
num1=int(input("Enter the first number:-"))
num2=int(input("Enter the second number:- "))
fun=choice
result=operation[choice](num1,num2)
print(f"{fun} of {num1} and {num2} is {result}")
counti_or_not=input("Do you want to countinue type Y or N :- ").lower()
if counti_or_not=="y":
    counti=True
   
    while counti:
     num3=int(input("Enter the second number:- "))
     result=operation[choice](result,num3)
     print(result)
     counti_or_not=input("Do you want to countinue type Y or N :- ").lower()
     if counti_or_not=="n":
         counti=False
else:
    print("thank you")




 

