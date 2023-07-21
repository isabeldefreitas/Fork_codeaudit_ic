program operacoes

  integer::produto
  real::soma
  integer:: num1
  integer:: num2
  
  read(*,*) num1
  read(*,*) num2
  
  soma= num1+num2
  produto= num1*num2
  
  print *, 'produto:', produto
  print *, 'soma:', soma
  
end program operacoes
