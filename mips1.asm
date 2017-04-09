	.data
	
	array:	.space 32
	
	prompt:	.asciiz "Enter 10 integers\n"
	
	disp:	.asciiz "Given numbers\n"
	
	disp2:	.asciiz "Given numbers (skiping next each time)\n"
	
	rdisp:	.asciiz "Reversed Given numbers\n"
	
	rdisp2:	.asciiz "Reversed Given numbers (skiping next each time)\n"
	
	newline:	.asciiz "\n"
	
	
	.text
	
	.globl main
	

main:	la	$4,prompt
	addi	
	$2,$0,4
	
	syscall 
	
	
	
	addi 	$7,$0,0		#index for array
	
	addi 	$10,$0,32	
	


back:	addi 	$2,$0,5
	
	syscall
	
	
	
	sw	$2,array($7)	# storing in array
	
	addi	$7,$7,4		#increasing by the length of word the $7
	
	bne	$7,$10,back
	
	

	la	$4,disp
	
	addi	$2,$0,4
	
	syscall 
	
	

	addi 	$7,$0,0		#re initializing $7 to zero for print out.
	


print1:	lw	$4,array($7)
	
	addi	$2,$0,1
	
	syscall
			
	
	
	la	$4,newline
	
	addi 	$2,$0,4
	
	syscall
	
	
	
	addi 	$7,$7,4
	
	bne	$7,$10,print1
	
	
	addi	$7,$0,0

	

	la	$4,disp2
	
	addi	$2,$0,4
	
	syscall
	


print2:	lw	$4,array($7)
	
	addi	$2,$0,1
	
	syscall
			
	
	
	la	$4,newline
	
	addi 	$2,$0,4
	
	syscall
	
	

	addi 	$7,$7,8
	
	bne	$7,$10,print2
	
	
	
	addi 	$7,$0,28
	
	addi 	$10,$0,-4
	
	
	
	la	$4,rdisp
	
	addi 	$2,$0,4
	
	syscall
	


rprint1:	lw	$4,array($7)
	
	addi 	$2,$0,1
	
	syscall
	
	

	la	$4,newline
	
	addi 	$2,$0,4
	
	syscall
	
	
	
	addi 	$7,$7,-4
	
	bne	$7,$10,rprint1
	
	

	la	$4,rdisp2
	
	addi 	$2,$0,4
	
	syscall
	
	
	
	addi 	$7,$0,28
	

rprint2: 	lw	$4,array($7)
	
	addi 	$2,$0,1
	
	syscall
	
	

	la	$4,newline
	
	addi 	$2,$0,4
	
	syscall
	
	
	
	addi 	$7,$7,-8
	
	bne	$7,$10,rprint2
	
	

	j	main