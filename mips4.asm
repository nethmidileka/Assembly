#get two user input and chaeck largest number

.text
 li $v0,4
 la $a0,prompt1
 syscall
 
 #read user input
 li $v0,5
 syscall
 move $t0,$v0
 
 #check user input is postive
 sgt $t1,$t0,$zero
 
 #$t1==0 then it negative
 beqz $t1,end_if
 
 #if not
 li $v0,4
 la $a0,prompt3
 syscall
 
 #get second number
 li $v0,4
 la $a0,prompt2
 syscall
 
  #read user input
 li $v0,5
 syscall
 move $t1,$v0
 
 
 #end if
 end_if:
 


 
 
.data
 prompt1: .asciiz"Enter 1st number: "
 prompt2: .asciiz"Enter  2nd number: "
 prompt3:.asciiz"this is postive number"
 