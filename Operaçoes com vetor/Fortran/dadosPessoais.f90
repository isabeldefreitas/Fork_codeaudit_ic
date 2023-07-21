program informacoes

  ! forma de comentário
  implicit none
  
  character::nome*6 
  character:: sobrenome
  integer::idade
  real:: altura
  
  nome= 'isabel'
  sobrenome = 'barboza'
  idade =19
  altura=1.64
  
  print *, 'Informações:'
  print *, 'Nome:', nome, ' ', sobrenome
  print *, 'idade:', idade
  print *, 'Altura:', altura
  
end program informacoes

