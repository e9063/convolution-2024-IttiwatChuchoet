build:
	gcc conv_sequential.c -o conv_sequential
	gcc -fopenmp conv_parallel.c -o conv_parallel

s:
	gcc conv_sequential.c -o conv_sequential
	conv_sequential < input_hard.txt

p:
	gcc -fopenmp conv_parallel.c -o conv_parallel
	conv_parallel < input_hard.txt

s_timed:
	gcc conv_sequential.c -o conv_sequential
	conv_sequential t < input_hard.txt

p_timed:
	gcc -fopenmp conv_parallel.c -o conv_parallel
	conv_parallel t < input_hard.txt
