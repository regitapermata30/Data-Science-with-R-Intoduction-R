4+3-2
(6+18)/6
2**3
2^3
2^(2*3)
x=3; x
y=4 ; y
z=x+y;z

a=1:3
b=2:4
c(a,b)
c(1,a)
array(1,3)
seq(1,5)
seq(from=1,to=3,length.out = 4) #desired length of the sequence
AA <- letters [1:3] ;AA
K <- c(3,2,1,3,2)
length(K)
K[2]
K[1:3]
K[-1]

#naming a vector
# Poker winnings from Monday to Friday
pok_vect <- c(140, -50, 20, -120, 240)
# Assign days as names of poker_vector
names(pok_vect) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

#matrix
matriks.1 = matrix(c(1,2,3,4,5,6),nrow=2,ncol=3);matriks.1
matriks.2 = matrix(1:6,nrow=2,ncol=3) ; matriks.2
data=c(6.4,8.8,7.5,5.3,7.6,9.5) ; data
matriks.a=matrix(data,nrow=3,ncol=2) ; matriks.a
dim(matriks.1)

#matrix operations
a=1:5
a
a*a
crossprod(a)
b=matrix(c(1:4),2)
b
b*b
b%*%b
solve(b)
c=c(3,5)
d=cbind(b,c); d
e=rbind(b,c);e


#example of vector and data frame
land=factor(c("Belgium","Denmark","France","GB","Ireland","Italy","Luxemburg","Holland","Portugal","Spain","USA","Japan","Deutschland"));
x=c(2.8,1.2,2.1,1.6,1.5,4.6,3.6,2.1,6.5,4.6,3,1.3,4.2);
y=c(9.4,10.4,10.8,10.5,18.4,11.1,2.6,8.8,5,21.5,6.7,2.5,5.6);
data1=data.frame(land,x,y); data1
colnames(data1)= c("countries","index","unemp")
income= c(12,10,13,9,8,10,11,12,13.5,14,10,11,13);
datanew = cbind(data1,income); datanew
subset(datanew,income<13)
subset(datanew$index,datanew$unemp>10) #mengambil data index sesuai ketentuan unemp>10
#mendapatkan nilai mean, min, max dari subset
mean(subset(datanew$index,datanew$unemp>10))
min(subset(datanew$index,datanew$unemp>10))
max(subset(datanew$index,datanew$unemp>10))

#conditional statement
x<-1
if (x==2){ print ("x=2") }
x

x<-1
if (x>=0){x="A"} else {x="B"}
X

#loopoing statement
for (i in 1:4) { 
      print (i) }
for (i in letters [1:4]) { 
      print (i) }

a<-numeric (20) # generate empty a of length 20
for (i in 1:20) { a[i]=i } # fill a with 1:20
a

#visualisasi data
data_titanic <- read.csv("D:/STATISTIKA/S2/DSI/titanicdata.csv",header=TRUE,sep=";")
head(data_titanic)
str(data_titanic)
table((data_titanic$Survived),as.factor(data_titanic$Sex))
summary(data.frame(data_titanic$Age,data_titanic$Fare))

library(ggplot2)
#library(ggpubr)
#histogram male and female
win.graph()
ggplot(data = data_titanic, mapping = aes(x =data_titanic$Age, fill = data_titanic$Sex),palette = c("#00AFBB", "#E7B800")) +
  geom_histogram(binwidth = 5)

#histogram only female
ggplot(data = data_titanic, mapping = aes(x =data_titanic$Age),palette = c("#00AFBB", "#E7B800")) +
  geom_histogram(binwidth = 5)

#barchart dibedakan survived atau tidak
ggplot(data_titanic,aes(x=factor(Pclass),fill=factor(Sex)))+
  geom_bar(position="dodge")+
  facet_grid(". ~ Survived")
head(data_titanic)

barchart <- ggplot(data_titanic, aes(Pclass, fill=Survived))+geom_bar()
barchart+xlab("Passenger Class")+ylab("Number of Passengers")+
  ggtitle("Survival by Passenger Class and Gender")+
  scale_fill_discrete(name = "", labels = c("Died", "Survived"))


#boxplot
ggplot(data = data_titanic, mapping = aes(x = data_titanic$Sex, y = data_titanic$Age)) +
  geom_boxplot() +
  xlab("Sex") + ylab("Age(years)")

#use data bigmart sales
train <- read.csv("D:/STATISTIKA/S2/DSI/bigmart-sales-data/train.csv",header=TRUE,sep=",")
library(ggplot2)

#scatter plot
ggplot(train, aes(Item_Visibility, Item_MRP)) + geom_point(aes(color = Item_Type)) + 
  scale_x_continuous("Item Visibility", breaks = seq(0,0.35,0.05))+
  scale_y_continuous("Item MRP", breaks = seq(0,270,by = 30))+ 
  theme_bw() + labs(title="Scatterplot") + facet_wrap( ~ Item_Type)

#
View(iris)
library(GGally)
library(ggplot2)
library(rlang)
ggpairs(iris[,c(1:5)],ggplot2::aes(colour=Species))
