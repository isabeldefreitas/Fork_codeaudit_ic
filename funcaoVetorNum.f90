program ManipulacaoVetor

    implicit none
    
    integer :: i, numEl
    
    print *, "Digite a quantidade de elementos:"
    read *, numEl

    integer :: vetNum(numEl)
    
    print *, "Digite os elementos:"
    	do i = 0, numEl
            read *, vetNum(i)
        end do
    
    
    print *, "Vetor:"
    call mostrarConteudo(vetNum, numEl)

    print *, "Soma dos valores:", somaNumero(vetNum, numEl)

    print *, 'Maior valor:', maior
    call encontraMaior(vetNum, numEl)

    print *, 'Menor valor:', menor
    call encontraMenor(vetNum, numEl)

contains 
subroutine mostrarConteudo(vetNum_, numEl_)
        
        implicit none
        integer :: i, inicio, fim
        inicio=1; fim=numEl_;
        do i = inicio, fim
            print *, vetNum_(i)
        end do
        print *,  " "
    end subroutine mostrarConteudo


function somaNumero(vetNum, numEl) 
        
        implicit none
        integer :: somaNumero  ! tipo de retorno da função
        integer :: soma
        integer :: i, inicio, fim
        inicio=1; fim=numEl;
        soma = 0
        do i = inicio, fim
            soma = soma + vetNum(i)
        end do
        somaNumero = soma  ! Retorna
    end function somaNumero

subroutine encontraMaior(vetNum, numEl) 
        
        implicit none
        integer :: maior
        integer :: i, inicio, fim
        
        inicio=1; fim=numEl;
        maior = vetNum(inicio)
        

        do i = inicio, fim
            if (vetNum(i) > maior) then
                maior = vetNum(i)
            end if
        end do
        
    end subroutine encontraMaior


subroutine encontraMenor(vetNum, numEl) 
        
        implicit none
        
        integer :: menor
        integer :: i, inicio, fim
        
        inicio=0; fim=numEl;
        menor = vetNumMenor(inicio)
        
        do i = inicio, fim
            if (vetNum(i) < menor) then
                menor = vetNum(i)
                
            end if
        end do
       
end subroutine encontraMenor

end program ManipulacaoVetor






