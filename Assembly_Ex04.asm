# Assembly Lista 01 - Exercício 04:

# 4. Faça um algoritmo que calcule e mostre a área de um trapézio usando apenas números inteiros. 
# Sabe-se que: A = (base maior + base menor) * altura)/2

.data 
         msg1: .asciiz "\nBase maior do trapezio: "
         msg2: .asciiz "\nBase menor do trapezio: "
         msg3: .asciiz "\nAltura: "
         msg4: .asciiz "\Area do trapezio: "

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
         
enquanto3:
         li $v0, 4
         la $a0, msg3
         syscall
         
         li $v0, 5
         syscall
         add $t3, $v0, 0
         
         blt $t3, 1, enquanto3
         
Fimenquanto:

# Calculo de area do trapezio:

         add $t4, $t1, $t2
         mul $t5, $t4, $t3
         div $t6, $t5, 2
         
         li $v0, 4
         la $a0, msg4
         syscall
         li $v0, 1
         add $a0, $t6, 0
         syscall
         
