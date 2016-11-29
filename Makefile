#target:dependencies
#[tab] system command

#compiler used
CC= g++

#compiler flags
CFLAGS= -c -Wall


all: test

test: main.o add5.o myPrint.o
	$(CC) main.o add5.o myPrint.o -o test

main.o: main.cpp
	$(CC) $(CFLAGS) main.cpp

add5.o: add5.cpp
	$(CC) $(CFLAGS) add5.cpp

myPrint.o: myPrint.cpp
	$(CC) $(CFLAGS) myPrint.cpp

clean:
	rm *o test

run:
	./test