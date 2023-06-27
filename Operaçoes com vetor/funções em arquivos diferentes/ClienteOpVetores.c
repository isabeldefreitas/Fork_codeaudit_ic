#include <stdio.h>
#include <stdlib.h>
#include "OpVetores.h"

int main() {
    int i, numEl=0, pos=0;

    printf("Digite a quantidade de elementos:\n");
    scanf("%i", &numEl);

    /*int vetNum[numEl]*/
    int *vetNum;
    vetNum=(int*) malloc(numEl*sizeof(int));

    printf("Digite os elementos:\n");
    for (i = 0; i < numEl; i++) {
        scanf("%i", &vetNum[i]);
    }

    mostrarConteudo(vetNum, numEl);

    printf("\nDigite quantos elementos deseja mostrar:\n");
    scanf("%i", &numEl); 

    printf("\nPartindo de qual posicao?\n");
    scanf("%i", &pos); 

    mostrarConteudo(&vetNum[pos], numEl);

    printf("\nSoma dos valores do vetor: %i\n\n", somarNumero(&vetNum[pos], numEl));

    printf("Maior valor: %i\n", encontrarMaior(&vetNum[pos], numEl));

    printf("Posicao do maior: [%i]\n\n", encontrarPosicaoMaior(&vetNum[pos], numEl));

    printf("Menor valor: %i\n", encontrarMenor(&vetNum[pos], numEl));

    printf("Posicao do menor: [%i]\n", encontrarPosicaoMenor(&vetNum[pos], numEl));

    return 0;
}