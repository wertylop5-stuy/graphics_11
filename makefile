OBJS = draw.o output.o matrix.o parser.o shapes.o rcs.o lighting.o vmath.o main.o
CC = gcc
OUTPUT = picture.ppm
EXEC = exec
MATH_LIB = -lm
SCRIPT=face

all: $(OBJS)
	$(CC) -o $(EXEC) $(OBJS) $(MATH_LIB)
	./$(EXEC) $(SCRIPT)

main.o:
	$(CC) $(DBG) -Wall -c main.c include/draw.h include/output.h include/rcs.h

draw.o:
	$(CC) $(DBG) -Wall -c draw.c include/draw.h

output.o:
	$(CC) $(DBG) -Wall -c output.c include/output.h

matrix.o:
	$(CC) $(DBG) -Wall -c matrix.c include/matrix.h

parser.o:
	$(CC) $(DBG) -Wall -c parser.c include/parser.h 

shapes.o:
	$(CC) $(DBG) -Wall -c shapes.c include/shapes.h

rcs.o:
	$(CC) $(DBG) -Wall -c rcs.c include/rcs.h

lighting.o:
	$(CC) $(DBG) -Wall -c lighting.c include/lighting.h

vmath.o:
	$(CC) $(DBG) -Wall -c vmath.c include/vmath.h

clean:
	rm -rf *.o $(OUTPUT)

