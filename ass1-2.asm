.data

resultInt: .asciiz "The result of 3x - 5y for integers is: "
resultFloat: .asciiz "The result of 3x - 5y for floats is: "
newline: .asciiz "\n"

.text
.globl main

main:
    # Integer
    jal prompt_int_and_read
    move $t0, $v0  # Store x

    jal prompt_int_and_read
    move $t1, $v0  # Store y
    
  result1 : 
    # Compute 3x - 5y for integers
    li $t2, 3
    mul $t3, $t0, $t2  # t3 = 3 * x

    li $t4, 5
    mul $t5, $t1, $t4  # t5 = 5 * y

    sub $t6, $t3, $t5  # t6 = 3x - 5y

    # Print result for integers
    li $v0, 4
    la $a0, resultInt
    syscall
     
    li $v0,1 
    move $a0, $t6
    syscall
    
    
    

    # Floating point
    jal prompt_float_and_read
    mov.s $f12, $f0  # Store x

    jal prompt_float_and_read
    mov.s $f13, $f0  # Store y
    
    # Compute 3x - 5y for floats
    li $t2, 0x40400000  # Load 3.0 as an integer
    mtc1 $t2, $f2  # Move 3.0 to $f2
    mul.s $f4, $f12, $f2  # f4 = 3 * x

    li $t3, 0x40A00000  # Load 5.0 as an integer
    mtc1 $t3, $f5  # Move 5.0 to $f
    mul.s $f6, $f13, $f5  # f6 = 5 * y

    sub.s $f7, $f4, $f6  # f7 = 3x - 5y

    # Print result for floats
    li $v0, 4
    la $a0, resultFloat
    syscall
    
    li $v0,2
    mov.s $f12, $f7
    syscall
   # Print float result
   

    # Exit program
    li $v0, 10
    syscall

