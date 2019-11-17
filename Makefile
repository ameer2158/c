CC=gcc
AR=ar
MAINOBJECTS=main.o
LIBOBJECTS=mylib.o
FLAGS= -Wall -g

all: mymathd mymaths mains maind 

mains: $(MAINOBJECTS) libmymath.a 
	$(CC) $(FLAGS) -o mains $(MAINOBJECTS) libmath.a
main: $(MAINOBJECTS)
	$(CC) $(FLAGS) -o maind $(MAINOBJECTS) ./libmath.so
mymathd: $(LIBOOBJECTS)
	$(CC) -shared -o libmath.so $(LIBOOBJECTS)
mymaths: $(LIBOOBJECTS)

	$(AR) -rcs libmath.a $(LIBOOBJECTS)	
main.o: main.c mymath.h
	$(CC) $(FLAGS) -c main.c
power.o: power.c 
	$(CC) -fPIC $(FLAGS) -c power.c 

basicMath.o: basic.Math.c
 $(FLAGS) -c basicMath.c $(CC)
.PHONY: clean all

clean:
	rm -f *.o mains maind libMath.so libmyMath.a
