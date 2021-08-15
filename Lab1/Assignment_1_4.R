#4. WAP in R to find the multiplication table (from 1 to 10)
{
for(i in 1:10) {
  for(k in 1:10) {
    print(paste(i,"x",k," = ",i*k))
  }
  print("-----------------")
  print("-----------------")
}
}
