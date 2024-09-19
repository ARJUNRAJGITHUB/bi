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
choice=input("select an operation type:  + , * , / , - ")
num1=int(input("enter the first number:-"))
num2=int(input("enter the second number:- "))
#fun=choice
result=operation[choice](num1,num1)
print(f"{fun} of {num1} and {num2} is {result}")
counti_or_not=input("do you want to countinue type Y or N")
if counti_or_not=="y":
    counti=True
    num3=int(input("enter the second number:- "))
    while counti:
     result2=operation[choice](result,num3)
     print(result2)
     counti=False
else:
    print("thank you")




 

