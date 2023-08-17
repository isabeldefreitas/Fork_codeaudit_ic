program informacoes_usuario
  implicit none
  
  character*50 :: nome
  character*50 :: sobrenome
  integer :: idade
  real :: altura
  
  print *, 'Digite seu nome:'
  read *, nome
  
  print *, 'Digite seu sobrenome:'
  read *, sobrenome
  
  print *, 'Digite sua idade:'
  read *, idade
  
  print *, 'Digite sua altura:'
  read *, altura
  
 
  print *, 'Informações:'
  print *, 'Nome:', nome, ' ', sobrenome
  print *, 'Idade:', idade
  print *, 'Altura:', altura
  
end program informacoes_usuario
