exam_data=data.frame(
  name=c('Anastasia','Dima','Katherine','James','Emily','Michael','Mathhew','Laura','Kevin','Jonas'),
  score=c(12.5,9,16.5,12,9,20,14.5,13.5,8,19),
  attempts=c(1,3,2,3,2,3,1,1,2,1),
  qualify=c('yes','no','yes','no','no','yes','yes','no','no','yes')

)
print(exam_data)
a=exam_data[c(3,5),c(1,3)]
print("a: Extract 3rd and 5th rows from 1st and 3rd columns : ")
print(a)

print("b: Column country is added : ")
exam_data$country=c("USA","USA","USA","USA","UK","USA","USA","India","USA","USA")
print(exam_data)

print("c: Add New row : ")
new_exam_data=data.frame(
  name=c('Robert','Sophia'),
  score=c(10.5,9),
  attempts=c(1,3),
  qualify=c('yes','no')
)
exam_data=subset(exam_data,select=-c(country))
exam_data<-rbind(exam_data,new_exam_data)
print(exam_data)

print("d: Sort by Name and Score : ")
exam_data=exam_data[with(exam_data,order(name,score)), ]
print(exam_data)

print("e: Save in file ")
save(exam_data,file="C:/Statictics with R/data.rda")
load("C:/Statictics with R/data.rda")
file.info("C:/Statictics with R/data.rda")
