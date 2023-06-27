gcc -c ClienteOpVetores.c -o ClienteOpVetores.o
gcc -c OpVetores.c -o OpVetores.o

gcc ClienteOpVetores.o OpVetores.o -o programa
