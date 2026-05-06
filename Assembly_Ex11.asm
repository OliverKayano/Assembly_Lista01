#Assembly Lista 01 - Exercício 11

# 11.Escrever um algoritmo que leia uma quantidade desconhecida de números e conte quantos deles 
#estão nos seguintes intervalos: [0-25], [26-50], [51-75] e [76-100]. A entrada de dados deve terminar 
#quando for lido um número negativo.

#*Sabe-se que a entrada deve ser um número entre 0 e 100, validar a entrada para que não permita 
#números fora deste intervalo

.data 
         msg1: .asciiz "\nInsira um valor: "
         msg2: .asciiz "\nNumero de valores de 0 a 25: "
         msg3: .asciiz "\nNumero de valores de 26 a 50: "
         msg4: .asciiz "\nNumero de valores de 51 a 100: "
.text
         
main:
         li $v0, 4
         la $a0, msg1
         syscall
         
         li $v0, 5
         syscall
         add $t1, $v0, 0
         
         blt $t1, 0, fim
         ble $t1, 25, intervalo1
         ble $t1, 50, intervalo2
         ble $t1, 100, intervalo3
         bgt $t1, 100, main
         
intervalo1:
         add $t2, $t2, 1
         j main
         
intervalo2:
         add $t3, $t3, 1
         j main

intervalo3:
         add $t4, $t4, 1
         j main
         
fim:

         li $v0, 4
         la $a0, msg2
         syscall
         
         li $v0, 1
         add $a0, $t2, 0
         syscall
         
         li $v0, 4
         la $a0, msg3
         syscall
         
         li $v0, 1
         add $a0, $t3, 0
         syscall
         
         li $v0, 4
         la $a0, msg4
         syscall
         
         li $v0, 1
         add $a0, $t4, 0
         syscall
         
         
