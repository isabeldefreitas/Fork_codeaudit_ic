#include <stdio.h>

void mostrarConteudo(int* vetNum, int numEl) {
   
    int i;
    for (i = 0; i < numEl; i++) {
        printf("%i ", vetNum[i]);
    }
}

int somaNumero(int* vetNum, int soma, int numEl) {
   
    int i;
    for (i = 0; i < numEl; i++) {
        soma = soma + vetNum[i];
    }
    return soma;
}

int encontraMaior(int* vetNum, int maior, int numEl) {
    
    int i;
    maior = vetNum[0];
    for (i = 0; i < numEl; i++) {
        if (vetNum[i] > maior) {
            maior = vetNum[i];
        }
    }
    return maior;
}

int encontraPosicaoMaior(int* vetNum, int maior, int posicaoMaior, int numEl) {
   
    int i;
    posicaoMaior = 0;
    for (i = 0; i < numEl; i++) {
        if (vetNum[i] == maior) {
            posicaoMaior = i;
        }
    }
    return posicaoMaior;
}

int encontraMenor(int* vetNum, int menor, int numEl) {
    
    int i;
    menor = vetNum[0];
    for (i = 0; i < numEl; i++) {
        if (vetNum[i] <= menor) {
            menor = vetNum[i];
        }
    }
    return menor;
}

int encontraPosicaoMenor(int* vetNum, int menor, int posicaoMenor, int numEl) {
    
    int i;
    posicaoMenor = 0;
    for (i = 0; i < numEl; i++) {
        if (vetNum[i] == menor) {
            posicaoMenor = i;
        }
    }
    return posicaoMenor;
}

int main() {
    
    int i, numEl, soma = 0, maior, menor, posicaoMaior, posicaoMenor;
    
    printf("Digite a quantidade de elementos:\n");
    scanf("%i", &numEl);
    
    int vetNum[numEl];
    printf("Digite os elementos:\n");
    for (i = 0; i < numEl; i++) {

        scanf("%i", &vetNum[i]);
    }

    mostrarConteudo(vetNum, numEl);

    soma = somaNumero(vetNum, soma, numEl);
    printf("\nSoma dos valores do vetor: %i\n\n", soma);

    maior = encontraMaior(vetNum, maior, numEl);
    printf("Maior valor: %i\n", maior);

    posicaoMaior = encontraPosicaoMaior(vetNum, maior, posicaoMaior, numEl);
    printf("Posicao do maior: [%i]\n\n", posicaoMaior);

    menor = encontraMenor(vetNum, menor, numEl);
    printf("Menor valor: %i\n", menor);

    posicaoMenor = encontraPosicaoMenor(vetNum, menor, posicaoMenor, numEl);
    printf("Posicao do menor: [%i]\n", posicaoMenor);

    return 0;
}
