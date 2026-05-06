# Assembly Lista 01 - Exercício 09

#9.Fazer um algoritmo que leia 2 números inteiros e exiba a divisão destes. Sabe-se que o 2o número 
#não pode ser zero, portanto, deve-se insistir na solicitação do 2o número até ele ser diferente de 0

.data
         msg1: .asciiz "\nInsira o primeiro valor: "
         msg2: .asciiz "\nInsira o segundo valor: "
         msg3: .asciiz "\nDivisao: "
.text
         
main:
         li $v0, 4
         la $a0, msg1
         syscall
         
         li $v0, 5
         syscall
         add $t1, $v0, 0
         
enquanto:
         li $v0,4
         la $a0, msg2
         syscall
         
         li $v0, 5
         syscall
         add $t2, $v0, 0
         
         beq $t2, 0, enquanto
         
FimEnquanto:

         div $t3, $t1, $t2
         
         li $v0, 4
         la $a0, msg3
         syscall
         
         li $v0, 1
         add $a0, $t3, 0
         syscall
