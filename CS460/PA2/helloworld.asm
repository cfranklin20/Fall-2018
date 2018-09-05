#Program: Hello World in MIPS Assembly
#Written By: Clayton Franklin
#Date: 04 September 2018
#Class: CS 460 

		.data				#Declaring the Data Section
string1:	.asciiz "Hello World!\n"	#String containing Hello World
	
		.text				#Declaring the Text Section
	
main:		li 	$v0, 4			#Load the system call to print a string into register $v0 
	
		la	$a0, string1		#Load address of string to be printed into register $v0
		syscall
		
exit:		li	$v0, 10			#Exit code for program
		syscall 