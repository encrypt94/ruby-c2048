CC=gcc
CPPFLAGS=-Wall -Wextra -Werror -std=gnu99 -O3 -fPIC

SRC=c2048/src/util.o c2048/src/board.o c2048/src/precalc.o c2048/src/ai.o c2048/src/test.o c2048.o

lib: $(SRC)
	$(CC) $(SRC) $(CPPFLAGS) -shared -o ../lib/c2048/c2048.so
clean:
	rm -f c2048/src/*.o *.o
