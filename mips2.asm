.data
	array:	.space 20 
	start:	.asciiz "START \n"
	prompt1:	.asciiz "Enter 1st integer: "
	prompt2:	.asciiz "Enter 2nd integer: "
	prompt3:	.asciiz "Enter 3rd integer: "
	prompt4:	.asciiz "Enter 4th integer: "
	prompt5:	.asciiz "Enter 5th integer: "
	sum:	.asciiz "The sum is "
	newline: .asciiz "\n"	

.text
.globl main
				#  $5 - index for array, $10 - holding the sum.
main :
	la $4,start
	addi $2,$0,4
	syscall
	
	la $4,prompt1
	addi $2,$0,4
	syscall
	
	addi $10,$0,0	# $10 for the sum
	
	addi $2,$0,5
	syscall
	
	add $10,$10,$2
	sw $2,array($0)	#storing 1st integer.


	la $4,prompt2
	addi $2,$0,4
	syscall

	addi $5,$0,4	
	
	addi $2,$0,5
	syscall

	add $10,$10,$2
	sw $2,array($5)	#storing 2nd integer.
	
	la $4,prompt3
	addi $2,$0,4
	syscall
	
	add $5,$5,$5
	
	addi $2,$0,5
	syscall

	add $10,$10,$2
	sw $2,array($5) 	#storing 3rd integer.
	
	la $4,prompt4
	addi $2,$0,4
	syscall
	addi $5,$0,12	
	
	addi $2,$0,5
	syscall

	add $10,$10,$2
	sw $2,array($5)	#storing 4th integer.

	la $4,prompt5
	addi $2,$0,4
	syscall
	
	addi $5,$0,16
	
	addi $2,$0,5
	syscall

	add $10,$10,$2
	sw $2,array($5) 	#storing 5th integer.
		
	la $4,sum
	addi $2,$0,4
	syscall
	
	add $4,$0,$10
	addi $2,$0,1
	syscall

	la $4,newline
	addi $2,$0,4
	syscall
	
	j main
