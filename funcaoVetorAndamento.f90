program ManipulacaoVetor
    implicit none
    
    integer :: numEl
    integer :: i, vetNum(numEl)

    print *, "Digite a quantidade de elementos:"
    read *, numEl
    
    print *, "Digite os elementos:"
    do i = 0, numEl
            read *, vetNum(i)
        end do
    
    
    print *, "Vetor:"
    call mostrarConteudo(vetNum, numEl)

    print *, "Soma dos valores:", somaNumero(vetNum, numEl)

    print *, 'Maior valor:', 'vetNum[', posicaoMaior, '] = ', maior
    call encontraMaior(vetNum, numEl)

    print *, 'Menor valor:', 'vetNum[', posicaoMenor, '] = ', menor
    call encontraMenor(vetNum, numEl)

    contains 
      
    subroutine mostrarConteudo(vetNum, numEl)
        
        implicit none
        integer :: i
        do i = 0, numEl)
            print *, vetNum(i)
        end do
        print *  
        
    end subroutine mostrarConteudo


    function somaNumero(vetNum, numEl) 
        
        implicit none
        
        integer :: somaNumero  ! tipo de retorno da função
        integer :: i, soma=0
        
        do i = 0, numEl
            soma = soma + vetNum(i)
        end do
        somaNumero = soma  ! Retorna
    end function somaNumero


    subroutine encontraMaior(vetNum, numEl) 
        
        implicit none
        integer :: i, maior
        maior = vetNum(0)
        
        do i = 0, numEl
            if (vetNum(i) > maior) then
                maior = vetNum(i)
                
            end if
        end do
        encontraMaior=maior
        
    end subroutine encontraMaior


    subroutine encontraMenor(vetNum, numEl) 
        
        implicit none
        
        integer :: menor, i
        menor = vetNum(0)
        
        do i = 0, numEl
            if (vetNum(i) <= menor) then
                menor = vetNum(i)
               
            end if
        end do
        encontraMenor=menor
        
    end subroutine encontraMenor


end program ManipulacaoVetor
