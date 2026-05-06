# Assembly Lista 01 - Exercício 12

# 12.Desenvolver um algoritmo que leia a altura, em centímetros de 15 pessoas. Este programa deverá 
#calcular e mostrar:
#a. A menor altura do grupo;
#b. A maior altura do grupo;

.data
         msg1: .asciiz "\nInsira uma nova altura: "
         msg2: .asciiz "\nMenor altura do grupo: "
         msg3: .asciiz "\nMaior altura do grupo: "
.text

main: 
         li $v0, 4
         la $a0, msg1
         syscall
         
         li $v0, 5
         syscall
         blt $v0, 1, main
         add $t4, $v0, 0
         add $t3, $t3, 1
         bgt $t3, 1, demais
         
primeira:
         add $t1, $v0, 0
         add $t2, $v0, 0
         add $t3, $t3, 1
         j main
         
demais:
         blt $t4, $t2, menor
         bgt $t4, $t1, maior
         blt $t3, 16, main
         beq $t3, 16, fim
         
menor:
         add $t2, $t4, 0
         j demais
         
maior:
         add $t1, $t4, 0
         j demais
         
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
         add $a0, $t1, 0
         syscall
