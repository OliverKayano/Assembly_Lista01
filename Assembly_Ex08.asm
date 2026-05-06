# Assembly Lista 01 - Exercício 08

#8.Encontrar o dobro de um número caso ele seja positivo e o seu triplo caso seja negativo, 
#imprimindo o resultado.
.data
         msg1: .asciiz "\nInsira um valor: "
         msg2: .asciiz "\nValor negativo, seu triplo e: "
         msg3: .asciiz "\nValor positivo, seu dobro e: "
.text
         
main: 
         li $v0, 4
         la $a0, msg1
         syscall
         
         li $v0, 5
         syscall
         add $t1, $v0, 0
         
         bge $t1, 0, positivo
         blt $t1, 0, negativo
         
positivo:
         mul $t2, $t1, 2
         
         li $v0, 4
         la $a0, msg3
         syscall
         
         li $v0, 1
         add $a0, $t2, 0
         syscall
         
         j Fim

negativo:
         mul $t2, $t1, 3
         
         li $v0, 4
         la $a0, msg2
         syscall
         
         li $v0, 1
         add $a0, $t2, 0
         syscall
         
         j Fim
         
Fim:
         
