#include <stdio.h>
#include <stdlib.h>
#include "OpVetores.h"

void mostrarConteudo(int* vetNum, int numEl) {
    int i;
    for (i = 0; i < numEl; i++) {
        printf("%i, ", vetNum[i]);
    }
}

int somarNumero(int* vetNum, int numEl) {
    int i, soma = 0; 
    for (i = 0; i < numEl; i++) {
        soma = soma + vetNum[i];
    }
    return soma;
}

int encontrarMaior(int* vetNum, int numEl) {
    int i, maior = vetNum[0];
    for (i = 1; i < numEl; i++) { 
        if (vetNum[i] > maior) {
            maior = vetNum[i];
        }
    }
    return maior;
}

int encontrarPosicaoMaior(int* vetNum, int numEl) {
    int i, maior = vetNum[0], posicaoMaior = 0;
    for (i = 1; i < numEl; i++) { 
        if (vetNum[i] > maior) {
            maior = vetNum[i];
            posicaoMaior = i;
        }
    }
    return posicaoMaior;
}

int encontrarMenor(int* vetNum, int numEl) {
    int i, menor = vetNum[0];
    for (i = 1; i < numEl; i++) { 
        if (vetNum[i] < menor) { 
            menor = vetNum[i];
        }
    }
    return menor;
}

int encontrarPosicaoMenor(int* vetNum, int numEl) {
    int i, menor = vetNum[0], posicaoMenor = 0;
    for (i = 1; i < numEl; i++) { 
        if (vetNum[i] < menor) { 
            menor = vetNum[i];
            posicaoMenor = i;
        }
    }
    return posicaoMenor;
}