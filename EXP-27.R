data = women
print("Women data set of height and weight : ")
print(data)
height_f=cut(women$height,3)
print("Factor coreesponding to height : ")
print(table(height_f))
