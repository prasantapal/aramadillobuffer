PROJECT=arma_thread
CC=/usr/local/Cellar/gcc5/5.3.0/bin/g++-5
CC+=-std=c++14
CFLAGS=-g3
CFLAGS+=-fno-omit-frame-pointer
CFLAGS+=-Wall
CFLAGS+=-mmacosx-version-min=10.8
CFLAGS +=/usr/local/Cellar/gcc5/5.3.0/lib/gcc/5/libstdc++.a

${PROJECT}_test: ${PROJECT}.o ${PROJECT}_test.o
	${CC} ${CFLAGS}  -o ${PROJECT}_test ${PROJECT}.o ${PROJECT}_test.o
${PROJECT}_test.o: ${PROJECT}_test.cpp
	${CC} ${CFLAGS}  -c ${PROJECT}_test.cpp
${PROJECT}.o: ${PROJECT}.cpp
	${CC} ${CFLAGS}  -c ${PROJECT}.cpp
clean:
	rm -rf *.o
