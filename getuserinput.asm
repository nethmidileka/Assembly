.text
 main:
  li $v0,4
  la $a0,prompt
  syscall
  
  #Read the integer and save it in $s0
  li $v0,5
  syscall
  move $s0,$v0
  
  #print output text 
  li $v0,4
  la $a0,output
  syscall
  
  #print interger
  li $v0,1
  move $a0,$s0
  syscall
  
  #exit from programe
  li $v0,10
  syscall
  
    
 .data
  prompt: .asciiz"Enter Your Iterger: "
  output: .asciiz"\n you type the number is "