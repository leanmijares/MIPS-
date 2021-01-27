#Title: Content of registers              
#Author: Lean Elizebette Mijares                            
#Date: October 7, 2020
#Description: Program to execute instructions and verify the content of registers $s2 to $s4.
#Input: values of $s1
#Output: values of $s2 to $s4

########################## Data Segment ####################################
.data

########################## Code Segment ####################################
.text
.globl main
main:
	li $s1, 0x12345678                   # main function entry
  	
  	sll $s2,$s1, 16               #$s2 = 0x56780000
	srl $s3,$s1, 8                #$s3 = 0x00123456
	sra $s4,$s1, 12               #$s4 = 0x00012345
    	
    	li $v0, 10                           # system call to exit program
    	syscall