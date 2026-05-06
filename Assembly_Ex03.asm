# Assembly Lista 01 - Exercício 03:

# 3. A empresa Hipotheticus paga R$10,00 por hora normal trabalhada, e R$15,00 por hora extra. Faça 
#um algoritmo para calcular e imprimir o salário bruto e o salário líquido de um determinado 
#funcionário. Considere, também, uma entrada de desconto para calcular o salário líquido.
.data
         msg1: .asciiz "\nHoras trabalhadas: "
         msg2: .asciiz "\nHoras extras trabalhadas: "
         msg3: .asciiz "\nDescontos em %: "
         msg4: .asciiz "\nSalário bruto: "
         msg5: .asciiz "\nSalário líquido: "
.text
        
main:

enquanto1:

         li $v0, 4
         la $a0, msg1
         syscall
         
         li $v0, 5
         syscall
         add $t1, $v0, 0
         
         
         blt $t1, 0, enquanto1
         
enquanto2:

         li $v0, 4
         la $a0, msg2
         syscall
         
         li $v0, 5
         syscall
         add $t2, $v0, 0
         
         
         blt $t2, 0, enquanto2
         
enquanto3:

         li $v0, 4
         la $a0, msg3
         syscall
         
         li $v0, 5
         syscall
         add $t3, $v0, 0
         
         blt $t2, 0, enquanto3
Fimenquanto:

# Agora vamos aos calculos de salario.

         mul $t4, $t1, 10
         mul $t5, $t2, 15
         add $t6, $t5, $t4
         
         li $v0, 4
         la $a0, msg4
         syscall
         li $v0, 1
         add $a0, $t6, 0
         syscall
         
         mul $t7, $t6, $t3
         div $t8, $t7, 100
         sub $t9, $t6, $t8
         
         li $v0, 4
         la $a0, msg5
         syscall
         li $v0, 1
         add $a0, $t9, 0
         syscall
         
         
         
