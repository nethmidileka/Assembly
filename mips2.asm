#Write a complete assembly language program that inputs two numbers and displays their sum 
#and difference.

.text
#print prompt1
 li $v0,4
 la $a0,prompt1
 syscall
 
#get user input1 and read
 li $v0,5
 syscall
 move $t0,$v0
 
#print prompt2
 li $v0,4
 la $a0,prompt2
 syscall
 
#get user input2 and read
 li $v0,5
 syscall
 move $t1,$v0
 
#print output text
 li $v0,4
 la $a0,output
 syscall
 
#add two num and print it
 add $t2,$t0,$t1
 
 move $a0,$t2
 li $v0,1
 syscall 
 
#exit program
 li $v0,10
 syscall
 
  
  
   
 
 
.data
 prompt1: .asciiz "Enter Your 1st number: "
 prompt2: .asciiz "Enter Your 2nd number: "
 output: .asciiz "you entered sum of numbers:" 