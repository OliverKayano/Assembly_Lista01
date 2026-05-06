#Assembly Lista 01 - Exercício 06

#6.Faça um algoritmo que leia dois valores inteiros A e B se os valores forem iguais deverá se somar 
#os dois, caso contrário multiplique A por B. Ao final de qualquer um dos cálculos deve-se atribuir o 
#resultado para uma variável C e mostrar seu conteúdo na tela.

.data
         msg1: .asciiz "\nInsira o primeiro valor: "
         msg2: .asciiz "\nInsira o segundo valor: "
         msg3: .asciiz "\nSoma: "
         msg4: .asciiz "\nMultiplicacao: "
.text
         
main:
         li $v0, 4
         la $a0, msg1
         syscall
         
         li $v0,5
         syscall
         add $t1, $v0, 0
         
         li $v0, 4
         la $a0, msg2
         syscall
         
         li $v0,5
         syscall
         add $t2, $v0, 0
         
         beq $t1, $t2, SeIgual
         bne $t1, $t2, SeDiferente
SeIgual:
         add $t3, $t1, $t2
         li $v0, 4
         la $a0, msg3
         syscall
         li $v0, 1
         add $a0, $t3, 0
         syscall
         j FimSe
         
SeDiferente:
         mul $t3, $t2, $t1
         li $v0, 4
         la $a0, msg4
         syscall
         li $v0, 1
         add $a0, $t3, 0
         syscall
         j FimSe
FimSe:
