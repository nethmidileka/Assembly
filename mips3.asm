#Write a complete assembly language program that inputs two numbers and displays their 
#multiplication, quotient and reminder. 

.text
#print prompt1
 li $v0,4
 la $a0,prompt1
 syscall
 
#read num1
 li $v0,5
 syscall
 
 move $t0,$v0
 
#print prompt2
 li $v0,4
 la $a0,prompt2
 syscall
 
#read num2
 li $v0,5
 syscall
 
 move $t1,$v0
 
#add two numbers
 add $t2,$t0,$t1
 
#sub two num
 sub $t3,$t0,$t1

#print multification text
 li $v0,4
 la $a0,multi
 syscall
 
 
#multification
 mul $t4,$t0,$t1 
 
 li $v0,1
 move $a0,$t4
 syscall
 
  
 #print newline
 li $v0,4
 la $a0,newline
 syscall
 
#print divide text
 li $v0,4
 la $a0,quotient
 syscall
 
#quation and reminder
 div $t0,$t1

 mflo $t6
 li $v0,1
 move $a0,$t6
 syscall
 
 #print newline
 li $v0,4
 la $a0,newline
 syscall

 #print reminder text
 li $v0,4
 la $a0,reminder
 syscall
  
 mfhi $t5
 li $v0,1
 move $a0,$t5
 syscall
  
 .data
 prompt1: .asciiz"Enter 1st number:"
 prompt2: .asciiz"Ënter 2nd number:"
 
 multi: .asciiz"Multiplication of num:"
 quotient:.asciiz"quotient of num:"
 reminder:.asciiz "reminder of num:"
 newline: .asciiz "\n"
 