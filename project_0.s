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
