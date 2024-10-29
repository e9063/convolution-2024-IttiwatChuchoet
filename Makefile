build:
	gcc conv_sequential.c -o conv_sequential
	gcc -fopenmp conv_parallel.c -o conv_parallel

s:
	gcc conv_sequential.c -o conv_sequential
ifeq ($(OS),Windows_NT)
	conv_sequential < input_hard.txt
else
	./conv_sequential < input_hard.txt
endif

p:
	gcc -fopenmp conv_parallel.c -o conv_parallel
ifeq ($(OS),Windows_NT)
	conv_parallel < input_hard.txt
else
	./conv_parallel < input_hard.txt
endif

s_timed:
	gcc conv_sequential.c -o conv_sequential
ifeq ($(OS),Windows_NT)
	conv_sequential t < input_hard.txt
else
	./conv_sequential t < input_hard.txt
endif

p_timed:
	gcc -fopenmp conv_parallel.c -o conv_parallel
ifeq ($(OS),Windows_NT)
	conv_parallel t < input_hard.txt
else
	./conv_parallel t < input_hard.txt
endif
