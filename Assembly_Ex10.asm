# Assembly Lista 01 - Exercício 10

# 10. No Assembly MIPS, existe a operação REM que apresenta o resto da divisão de 2 valores inteiros. 
#SEM UTILIZAR A OPERAÇÃO REM, faça um algoritmo usando DIV, MUL e SUB que receba 2 valores 
#inteiros e exiba o resto da divisão do maior pelo menor (Condição que deve ser verificada no início 
#do algoritmo.

.data
         msg1: .asciiz "\nInsira um valor: "
         msg2: .asciiz "\nInsira um segundo valor: "
         msg3: .asciiz "\nValor do resto da divisão: "
.text
         
main:
         li $v0, 4
         la $a0, msg1
         syscall
         
         li $v0, 5         
         syscall
         add $t1, $v0, 0
         
         li $v0, 4
         la $a0, msg2
         syscall
         
         li $v0, 5
         syscall
         add $t2, $v0, 0
                  
         bge $t2, $t1, se
         blt $t2, $t1, senao
se:
	 add $t5, $t2, 0
         add $t2, $t1, 0
         add $t1, $t5, 0
         j FimSe

senao:
         add $t5, $t2, 0
         j FimSe
         
FimSe:
         sub $t1, $t1, $t2
         
         bge $t1, $t2, FimSe
         
         li $v0, 4
         la $a0, msg3
         syscall
         
         li $v0, 1
         add $a0, $t1, 0
         syscall
         
         
         
