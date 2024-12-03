.text
 #prompt1
 li $v0,4
 la $a0,prompt_height
 syscall
 
 li $v0,5
 syscall
 
 move $t0,$v0
 
 #prompt2
 li $v0,4
 la $a0,prompt_width
 syscall
 
 li $v0,5
 syscall
 
 move $t1,$v0
 
 #multification
 mul $t2,$t1,$t0
 
 
 li $v0,4
 la $a0,prompt_area
 syscall
 

  li $v0,1
  move $a0,$t2
  syscall
 
 
.data
 prompt_height:	.asciiz"Enter height: "
 prompt_width: .asciiz"Enter width: "
 prompt_area:.asciiz"Area: "