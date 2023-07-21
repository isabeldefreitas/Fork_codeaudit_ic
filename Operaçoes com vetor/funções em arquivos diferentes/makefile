programa: ClienteOpVetores.o OpVetores.o
	 gcc ClienteOpVetores.o OpVetores.o -o programa

ClienteOpVetores.o: ClienteOpVetores.c
	gcc -c ClienteOpVetores.c -o ClienteOpVetores.o

OpVetores.o: OpVetores.c
	gcc -c OpVetores.c -o OpVetores.o

clean:
	rm -f programa ClienteOpVetores.o OpVetores.o
