# Define required macros here
CC = Clang
SHA_256_SOURCE =  sha256.c
TEST_SOURCE = test.c
OUTPUT_PROGRAM = sha256
OUTPUT_TEST = test_sha256

all:
	make clean
	make compile
	make test
	make run

#Remove old output
clean: 
	-rm ${OUTPUT_PROGRAM} ${OUTPUT_TEST}

#Compile program for tests
compile: 
	${CC} ${SHA_256_SOURCE} -o ${OUTPUT_PROGRAM}

#Test needs compiled program to run tests
test:
	${CC} ${TEST_SOURCE} -o ${OUTPUT_TEST}
	./${OUTPUT_TEST}

#Run Compiled program
run:
	make compile
	./${OUTPUT_PROGRAM}
