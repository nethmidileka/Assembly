#Write subprograms for the following:

#Prompt and read an Integer
#Print an integer
#Prompt and read a float
#Print a Float in mips

.text
  main:
  #interger
  jal prompt_int_and_read
    
  jal print_int
 
  #float
  jal prompt_float_and_read
  
  jal print_float
  
  #exit the program
  li $v0,10
  syscall
  
#subprograms1
 prompt_int_and_read:
  #prompt
  li $v0,4
  la $a0,prompt1
  syscall
  
  #read
  li $v0,5
  syscall
  move $t0,$v0
 
  jr $ra
  
 print_int:
  li $v0,4
  la $a0,print1
  syscall
   
  li $v0,1
  move $a0,$t0
  syscall
  
  #print new line
  li $v0,4
  la $a0,newline
  syscall
   
  jr $ra
  

    
 #subprogram2
 prompt_float_and_read:
  #prompt
  li $v0,4
  la $a0,prompt2
  syscall
  
  #read
   li $v0,6
   mov.s $f0,$f12
   syscall
   
   jr $ra
   
 print_float:
   li $v0,4
   la $a0,print2
   syscall
   
   li $v0,2
   mov.s $f12,$f0
   syscall
   
   jr $ra
   
   
   
     

.data
 prompt1:.asciiz"Enter interger: "
 prompt2:.asciiz"Enter float: "
 print1:.asciiz"Your entered interger is "
 print2:.asciiz"Your entered float is "
 newline:.asciiz"\n"
   