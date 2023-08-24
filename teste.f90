subroutine mostrarConteudo(vetNum_, n_)
        implicit none
        integer  vetNum_(5)
        integer  n_
        integer  i, inicio, fim
        inicio=1; fim=n_;
        do i = inicio, fim
            print , vetNum_(i)
        end do
        print   
    end subroutine mostrarConteudo


function somaNumero(vetNumSoma, nSoma) 
        implicit none
        integer  somaNumero  ! tipo de retorno da função
        integer  vetNumSoma(nSoma) 
        integer  soma
        integer  i, inicio, fim
        inicio=1; fim=nSoma;
        soma = 0
        do i = inicio, fim
            soma = soma + vetNumSoma(i)
        end do
        somaNumero = soma  ! Retorna
    end function somaNumero

subroutine encontraMaior(vetNumMaior, Nmaior) 
        implicit none
        integer  maior
        maior = vetNumMaior(inicio)
        integer  i, inicio, fim
        inicio=0; fim=Nmaior;

        do i = inicio, fim
            if (vetNumMaior(i) > maior) then
                maior = vetNumMaior(i)
            end if
        end do
        encontraMaior = maior
    end subroutine encontraMaior


subroutine encontraMenor(vetNumMenor, Nmenor) 
        
        implicit none
        
        integer  menor
        integer  i, inicio, fim
        inicio=0; fim=Nmaior;
        menor = vetNumMenor(inicio)
        
        do i = inicio, fim
            if (vetNumMenor(i) < menor) then
                menor = vetNumMenor(i)
                
            end if
        end do
        encontraMenor = menor

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

    print *, 'Maior valor:', maior
    call encontraMaior(vetNum, numEl)

    print *, 'Menor valor:', menor
    call encontraMenor(vetNum, numEl)

end program ManipulacaoVetor