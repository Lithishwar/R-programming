num <- readline(prompt="Enter Number : ")
num <- as.numeric(num)
for (i in 1:num)
{
  if(num %% i == 0)
  {
    print(i)
  }
}
