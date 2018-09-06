#Program: Iterative Factorial in MIPS Assembly
#Written By: Clayton Franklin
#Date: 04 September 2018
#Class: CS 460 

		.data
enter:		.asciiz "Enter in a whole number: " 
result: 	.asciiz "The result of the factorial is: "
negative:	.asciiz "Cannot compute the factorial of a negative number.\n"
orgval: 	.word 0
factval: 	.word 1

		.text

main:	li	$2, 4		#load register v0 with code for systemcall to print a string
	
	la	$4, enter	#load address a0 with the string enter
	syscall
	
	li 	$2, 5		#load register v0 with code for system call to read in an int
	
	syscall
	sw	$2, orgval
	move	$16, $2
	li	$18, 1
	beqz	$2, done
	bltz 	$2, negative1
	bgtz 	$2, factorial

factorial:
	mul 	$18, $18, $16
	sub 	$17, $16, 1
	move	$16, $17
	beq 	$16, 1, done
	bgtz 	$16, factorial

negative1: 
	li	$2, 4		#load register v0 with code for systemcall to print a string
	
	la	$4, negative	#load address a0 with the string enter
	syscall
	
	
	li 	$2, 5		#load register v0 with code for system call to read in an int
	la	$4, enter
	syscall
	sw	$2, orgval
	beqz	$2, done
	bltz 	$2, negative1
	bgtz 	$2, factorial

done:
	sw 	$18, factval
	li 	$2, 4
	
	la	$4, result
	syscall
	
	li 	$v0, 1
	
	move	$4, $18 
	syscall
  
 	li	$v0, 10		# system call code for exit = 10
	syscall				# call operating sys

   
  