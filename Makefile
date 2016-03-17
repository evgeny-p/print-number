objects = ./obj/main.o ./obj/print_number.o

./bin/print_number: $(objects) ./bin
	gcc $(objects) -o ./bin/print_number

./obj/main.o: ./src/main.c ./obj
	gcc -c -Wall ./src/main.c -o ./obj/main.o

./obj/print_number.o: ./src/print_number.c ./obj
	gcc -c -Wall ./src/print_number.c -o ./obj/print_number.o

./bin:  
	mkdir bin

./obj: 
	mkdir obj

.PHONY: clean
clean:
	rm -f -r bin/ obj/
