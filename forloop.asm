.text
 #prit prompt
 li $v0,4
 la $a0,prompt
 syscall
 
 #read int
 li $v0,5
 syscall
 move $s1,$v0
 
 li $s0,0 #program counter 
 li $s2,0 #total intaliaze
 
 start_loop:
  sle $t1,$s0,$s1 
  beqz  $t1,end_loop
  
  add $s2,$s2,$s0
  addi $s0,$s0,1
  
  b start_loop
  
  
 end_loop:
 li $v0,4
 la $a0,result
 syscall
 
 move $a0,$s2
 
 li $v0,1
 syscall
 
 exit:
 li $v0,10
 syscall
 
    
 
 
 
.data
 #prompt
 prompt:.asciiz"Enter the number to get sum: "
 result:.asciiz"sum of numbers is: "
 