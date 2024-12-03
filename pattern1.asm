.text
main:
#prompt user input
 li $v0,4
 la $a0,prompt
 syscall
 
#read user input
 li $v0,5
 syscall
 
 move $t0,$v0

#intialize outer loop
 li $t1,1

outer_loop:
 ble $t1,$t0,start_row
 j exit
 
start_row: 
 move $t2,$t1
 
print_row:
 blez $t2,next_row
 
 li $v0,4
 la $a0,star
 syscall
 
 #decrement column
 subi $t2,$t2,1
 
 j print_row  
 
next_row:
#print new line
 li $v0,4
 la $a0,newline
 syscall
 
#increment row counter
 addi $t1,$t1,1
 j outer_loop 
 
exit:
 li $v0,10
 syscall
 
.data
 prompt:.asciiz"Enter the number of rows: "
 newline:.asciiz"\n"
 star:.asciiz"*"
