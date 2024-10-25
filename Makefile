s:
	gcc -fopenmp conv_sequential.c -o conv_sequential
	conv_sequential < input_hard.txt

p:
	gcc -fopenmp conv_parallel.c -o conv_parallel
	conv_parallel < input_hard.txt