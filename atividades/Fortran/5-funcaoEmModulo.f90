module ManipulacaoVet
    implicit none

    contains

    subroutine mostrarConteudo(vetNum_, numEl_, inicio_, fim_)
        implicit none
        integer, intent(in) :: vetNum_(:), numEl_, inicio_, fim_
        integer :: i_
        
        do i_ = inicio_, fim_
            print *, vetNum_(i_)
        end do
    end subroutine mostrarConteudo

    integer function somaNumero(vet_Num, num_El, inicioS, fimS) 
        
        integer, intent(in) :: vet_Num(:)
        integer, intent(in) :: num_El, inicioS, fimS
        integer :: i
        integer :: soma
    
        soma = 0
        do i = inicioS, fimS
            soma = soma + vet_Num(i)
        end do
        somaNumero=soma
    end function somaNumero

    integer function encontraMaior(vetNumMa, numElMa, inicioMa, fimMa)
        
        integer, intent(in) :: vetNumMa(:)
        integer, intent(in) :: numElMa, inicioMa, fimMa
        integer :: i
        integer :: maior
        
        maior = vetNumMa(inicioMa)
        do i = inicioMa, fimMa
            if (vetNumMa(i) > maior) then
                maior = vetNumMa(i)
            end if
        end do
        encontraMaior = maior 
    end function encontraMaior
    
    integer function encontraMenor(vetNumMe, numElMe, inicioMe, fimMe)
        
        integer, intent(in) :: vetNumMe(:)
        integer, intent(in) :: numElMe, inicioMe, fimMe
        integer :: i
        integer :: menor
        
        menor = vetNumMe(inicioMe)
        do i = inicioMe, fimMe
            if (vetNumMe(i) < menor) then
                menor = vetNumMe(i)
            end if
        end do
        encontraMenor = menor  
    end function encontraMenor


end module ManipulacaoVet

program ManipulacaoVetor
    use ManipulacaoVet
    implicit none
    
    integer :: i, numEl, inicio=1, fim
    integer, allocatable :: vetNum(:)
    
    print *, "Digite a quantidade de elementos:"
    read *, numEl
    
    allocate(vetNum(numEl))
    
    print *, "Digite os elementos:"
    do i = inicio, numEl
        read *, vetNum(i)
    end do
    
    fim = numEl
    
    call mostrarConteudo(vetNum, numEl, inicio, fim)
    
    print *, "Soma dos valores do vetor:", somaNumero(vetNum, numEl, inicio, fim)
    
    print *, "Maior valor:", encontraMaior(vetNum, numEl, inicio, fim)
    
    print *, "Menor valor:", encontraMenor(vetNum, numEl, inicio, fim)

    
end program ManipulacaoVetor
