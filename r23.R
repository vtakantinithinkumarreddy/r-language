a=2
class(a)
b=2L
class(b)
c=TRUE
class(c)

d='A'
class(d)
e=2+1i
class(e)
f=as.raw(e)
class(f)
a1<-c(1,2,3,4)
a1[1]
x<-c(1,2,3,4)
y<-c(1,3,4,5)
x+y
x-y
x%%y
x*y
x/y
x**y
b1<-as.numeric(readline())
c1<-as.numeric(readline())
b1+c1
b1-c1
b1**c1
b1%%c1
b1/c1
a2<-10
a3<-20
a4<-c(10,20)
a5<-c(50,60)
a6<-a4+a3
a6
a51<-c(10,2L,TRUE)
class(a51)
a45<-c("ASD",TRUE)
class(a45)
a23<-5+20L+TRUE+30+10i
a23
x1<-as.numeric(readline())
x2<-as.numeric(readline())
x1+x2
x3<-scan()
x3

x4<-scan(what=integer())
x4
class(x4)
c0<-scan(what=numeric())
c0
cd<-list(c(10,20,30),c(10L,20L),list("aa","bb","cc"),c(10+5i,2+3i,10+2i),c(TRUE,FALSE,TRUE,FALSE))
cd
a23<-c(1,2,3,4)
a24<-c(0,2,3,4)
a23 & a24
a23 | a24
#assignment operaters
q=10
q<-10
10->q
q<<-10
10->>a
a2<-12
b2<-10
a2<b2
a2>b2
a2=b2
a2!=b2
a3<-1:20
20 %in% a3
aw<-matrix(c(1:9),nrow=3,ncol=3,byrow=FALSE) 
bw<-matrix(c(10:18),nrow=3,ncol=3,byrow=FALSE)
aw[1,2]
aw[1:2,]
aw[,1:2]
t(aw) # means transpose
aw*bw
dim(aw)
# a%*%b is used to perform dot product between two matrices
arr<-array(1:24,dim=c(2,3,2))
arr
blood_groups<-c("O","A","AB","O","A")
blood_group_factor<-factor(blood_groups,labels=c("O","A","B"))
blood_group_factor
#i in labels if value is missing it shows error value
#in levels if value is missing it shows na value
temperature<-factor(c(1:20),levels=c(1:40),labels=c(40))
temperature
levels(temperature)
ad<-array(c(1:8),dim=c(2,2,2))
ad
ad1<-matrix(ad,nrow=4,ncol=2,byrow=FALSE)
ad1
ad1
as2<-factor(c("a","b","a","b"),labels=c("AAA","BBB","CCC"))
as2
# if we sp /ecify labels and levels in factors then it should be same length
#if we specify only labels then number of values present in labels must have same unique values in vector
as3<-read.csv(file.choose())
as4<-read.csv("C:/Users/NithinKumar Reddy V/Downloads/students (3).csv",stringsAsFactors = TRUE)
View(as4)
class(as4$name) 
# using string as factor =TRUE in read.csv file it result as factor
a21<-as.numeric(readline("enter the number: "))
a23<-as.numeric(readline("enter the number: "))
if(a21>a23){
  print(a21)
}else{
  print(a23)
}
a24<-as.numeric(readline("enter number: "))
a25<-switch(a24,1=print("one"),2=print("two"),3=print("three"),4=print("four"),5=print("five"),6=print("six"),7=print("seven"))
a25
a26<-c(1:24)
a26
count<-0
for ( i in a26){
  if(i%%2==0){
    count<-count+1
  }
    
}
print(count)
a27<-as.numeric(readline("enter the number: "))
x<-1
repeat{
  if(x==11){
    break;
  }
  cat(a27,"X",x,"=",a27*x,"\n")
  
  x<-x+1
}

a23<-summary(iris)
a23$Sepal.Length
