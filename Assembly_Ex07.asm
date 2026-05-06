# Assembly Lista 01 - Exercício 07

#7.Faça um algoritmo que leia uma variável e some 5, caso seja par ou some 8, caso seja ímpar, 
#imprimir o resultado desta operação.

.data
         msg1: .asciiz "\nInsira uma variavel: "
         msg2: .asciiz "\nVariavel impar (somar 8): "
         msg3: .asciiz "\nVariavel par (somar 5): "
.text
         
main:
         li $v0, 4
         la $a0, msg1
         syscall
         
         li $v0, 5
         syscall
         add $t1, $v0, 0
         
         rem $t2, $t1, 2
         beq $t2, 0, Par
         bne $t2, 0, Impar
         
Impar:
         add $t3, $t1, 8
         
         li $v0, 4
         la $a0, msg2
         syscall
         li $v0, 1
         add $a0, $t3, 0
         syscall
         
         j Fim
Par:
         add $t3, $t1, 5
         
         li $v0, 4
         la $a0, msg3
         syscall
         li $v0, 1
         add $a0, $t3, 0
         syscall
         
         j Fim
Fim:
