program ManipulacaoVetor
    
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
    
    print *, "Posicao do maior: [", encontraPosicaoMaior(vetNum, numEl, inicio, fim), "]"
    
    print *, "Menor valor:", encontraMenor(vetNum, numEl, inicio, fim)
    
    print *, "Posicao do menor: [", encontraPosicaoMenor(vetNum, numEl, inicio, fim), "]"

    
contains

    subroutine mostrarConteudo(vetNum, numEl, inicio, fim)
        
        integer, intent(in) :: vetNum(:), numEl, inicio, fim
        integer :: i
        
        do i = inicio, fim
            write(*, *) vetNum(i)
        end do
        
    end subroutine mostrarConteudo
    
    function somaNumero(vetNum, numEl, inicio, fim) result(soma)
        
        integer, intent(in) :: vetNum(:), numEl, inicio, fim
        integer :: i, soma
        
        soma = 0
        do i = inicio, fim
            soma = soma + vetNum(i)
        end do
        
    end function somaNumero
    
    function encontraMaior(vetNum, numEl, inicio, fim) result(maior)
        
        integer, intent(in) :: vetNum(:), numEl, inicio, fim
        integer :: i, maior
        
        maior = vetNum(inicio)
        do i = inicio, fim
            if (vetNum(i) > maior) then
                maior = vetNum(i)
            end if
        end do
        
    end function encontraMaior
    
    function encontraPosicaoMaior(vetNum, numEl, inicio, fim) result(posicaoMaior)
        
        integer, intent(in) :: vetNum(:), numEl, inicio, fim
        integer :: i, maior, posicaoMaior
        
        maior = vetNum(inicio)
        posicaoMaior = inicio
        
        do i = inicio, fim
            if (vetNum(i) > maior) then
                maior = vetNum(i)
                posicaoMaior = i
            end if
        end do
        
    end function encontraPosicaoMaior
    
    function encontraMenor(vetNum, numEl, inicio, fim) result(menor)
        
        integer, intent(in) :: vetNum(:), numEl, inicio, fim
        integer :: i, menor
        
        menor = vetNum(inicio)
        
        do i = inicio, fim
            if (vetNum(i) <= menor) then
                menor = vetNum(i)
            end if
        end do
        
    end function encontraMenor
    
    function encontraPosicaoMenor(vetNum, numEl, inicio, fim) result(posicaoMenor)
        
        integer, intent(in) :: vetNum(:), numEl, inicio, fim
        integer :: i, menor, posicaoMenor
        
        menor = vetNum(inicio)
        posicaoMenor = inicio
        
        do i = inicio, fim
            if (vetNum(i) <= menor) then
                menor = vetNum(i)
                posicaoMenor = i
            end if
        end do
        
    end function encontraPosicaoMenor

end program ManipulacaoVetor
