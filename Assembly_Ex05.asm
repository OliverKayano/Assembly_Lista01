# Assembly Lista 01 - Exercício 05

# 5.Faça um algoritmo que receba o valor dos catetos de um triângulo, calcule e mostre o valor da 
# hipotenusa

.data 
         msg1: .asciiz "\nPrimeiro cateto: "
         msg2: .asciiz "\nSegundo cateto: "
         msg3: .asciiz "\nHipotenusa: "
.text
         
main:

enquanto1:

         li $v0, 4
         la $a0, msg1
         syscall
         
         li $v0, 5
         syscall
         add $t1, $v0, 0
         
         blt $t1, 1, enquanto1

enquanto2:

         li $v0, 4
         la $a0, msg2
         syscall
         
         li $v0, 5
         syscall
         add $t2, $v0, 0
         
         blt $t2, 1, enquanto2
         
FimEnquanto:

# Calcular hipotenusa:

         mul $t3, $t1, $t1
         mul $t4, $t2, $t2
         add $t5, $t4, $t3
         
# Calcular raiz da hipotenusa:

raiz:       
         add $t6, $t6, 1
         mul $t7, $t6, $t6
         
         bne $t7, $t5, raiz
         
FimRaiz:
         li $v0, 4
         la $a0, msg3
         syscall
         
         li $v0, 1
         add $a0, $t6, 0
         syscall
