.text
#1st input 
 li $v0,4
 la $a0,prompt1
 syscall
 
#read  tst user input and print
 li $v0,5
 syscall
 move $t0,$v0
 
#2nd input
 li $v0,4
 la $a0,prompt2
 syscall
  
#read 2nd user input
 li $v0,5
 syscall
 move $t1,$v0
 
#if num1>num2
 sge $t2,$t0,$t1 
 beqz $t2,greater_than
 
#greater_than
 greater_than:
  li $v0,4
  la $a0,prompt
  syscall
  
    
   
 

 

.data
 prompt1: .asciiz"Enter 1st number: "
 prompt2: .asciiz"Enter  2nd number: "
 prompt3:.asciiz"num1 > num2"
 prompt4: .asciiz"num1<num2"
 