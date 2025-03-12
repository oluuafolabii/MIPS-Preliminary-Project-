.data
id: .asciiz "@03155258"
# Howard ID string stored

.text
.globl main
main:
    li $t0, 7       # N = 7
    li $t3, 9       # Constant 9
    # Initialization complete
    li $t1, 0
forward_loop:
    beq $t1, $t3, backward_loop
    add $t2, $t1, $t0
    addi $t2, $t2, 1
    div $t2, $t3
    mfhi $t4
    li $t5, 0
forward_char_loop:
    beq $t5, $t3, forward_newline
    add $t6, $t4, $t5
    div $t6, $t3
    mfhi $t7
    la $t8, id
    add $t8, $t8, $t7
    lb $a0, 0($t8)
    li $v0, 11
    syscall
    addi $t5, $t5, 1
    j forward_char_loop
forward_newline:
    li $a0, 10
    li $v0, 11
    syscall
    addi $t1, $t1, 1
    j forward_loop
    # Forward printing complete
backward_loop:
    li $t1, 0
backward_loop_start:
    beq $t1, $t3, end_program
    add $t6, $t1, $t5
    div $t6, $t3
    mfhi $t7
