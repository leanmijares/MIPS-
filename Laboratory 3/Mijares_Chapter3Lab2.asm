#Title: Content of registers              
#Author: Lean Elizebette Mijares                            
#Date: October 7, 2020
#Description: Program to execute instructions and verify the content of registers $s3 to $s6.
#Input: values of $s1, $s2
#Output: values of $s3 to $s6

########################## Data Segment ####################################
.data

########################## Code Segment ####################################
.text
.globl main
main:
	li $s1, 0x12345678                   # main function entry
	li $s2, 0xffff9a00
  	
  	and $s3,$s1,$s2            #$s3 = 0x12341200 
  	or  $s4,$s1,$s2 	   #$s4 = 0xffffde78
  	xor $s5,$s1,$s2 	   #$s5 = 0xedcbcc78
  	nor $s6,$s1,$s2            #$s6 = 0x00002187
    	
    	li $v0, 10                           # system call to exit program
    	syscall