@ Variant 0: Compute (a+b)/2 + c!
@ where a=6, b=4, c=3 => result = (6+4)/2 + 3! = 5 + 6 = 11

.section .text
.global main

main:
    @ Initialize values
    MOV R0, #6          @ a = 6
    MOV R1, #4          @ b = 4
    MOV R2, #3          @ c = 3 (for c! = 6)

    @ Step 1: compute a + b
    ADD R3, R0, R1      @ R3 = a + b = 10

    @ Step 2: compute (a+b)/2
    MOV R4, #2
    UDIV R5, R3, R4     @ R5 = (a+b)/2 = 5

    @ Step 3: compute c! using loop
    MOV R6, #1          @ factorial = 1
    MOV R7, R2          @ counter = c

fact_loop:
    MUL R6, R6, R7      @ factorial *= counter
    SUBS R7, R7, #1     @ counter--
    BNE fact_loop       @ if counter != 0, loop
                        @ R6 = c! = 6

    @ Step 4: final result
    ADD R8, R5, R6      @ R8 = (a+b)/2 + c! = 11

    @ Infinite loop (halt)
halt:
    B halt
