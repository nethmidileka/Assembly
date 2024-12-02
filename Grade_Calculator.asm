#if else grading marks

.text
 li $v0,4
 la $a0,prompt1
 syscall
 
 #read marks 
 li $v0,5
 syscall
 
 #calculate marks grades
 move $s0,$v0
 
 #if (grade > 100) || grade < 0)
 slti $t1,$s0,0
 sgt $t2,$s0,100
 or  $t1,$t1,$t2
 beqz  $t1,grade_A
 
 #else
  la $a0,InvalidInput
  j print_End
  
 grade_A:
  sge $t1,$s0,75 
  beqz $t1,grade_B
  la $a0,outputA
  j print_End

 grade_B:
  sge $t1,$s0,65 
  beqz $t1,grade_C
  la $a0,outputB
  j print_End
 grade_C:
  sge $t1,$s0,55 
  beqz $t1,grade_D
  la $a0,outputC
  j print_End
 
 grade_D:
  sge $t1,$s0,45 
  beqz $t1,else
  la $a0,outputD
  j print_End
 
 else:
  la $a0,outputF
  j print_End
 
 print_End:
  li $v0,4
  syscall
  li $v0,10
  syscall
 
 .data
 prompt1: .asciiz"Enter your marks: "
 
 InvalidInput: .asciiz"You entered invalid input"
 outputA:.asciiz "A"
 outputB:.asciiz "B"
 outputC:.asciiz "C"
 outputD:.asciiz "D"
 outputF:.asciiz "E"