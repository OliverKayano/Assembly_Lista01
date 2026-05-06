#Assembly Lista 01 - Exercicio 01:
# 1) A  imobiliária Imóbilis vende apenas terrenos retangulares. Faça um algoritmo para ler as
#dimensões de um terreno e depois exibir a área do terreno.
.data
        msg1: .asciiz "\nDigite o valor da base do terreno: "
        msg2: .asciiz "\nDigite o valor da lateral do terrno: "
        msg3: .asciiz "\nArea do terreno: "

.text
main:

#Definindo valores de entrada positivos:

enquanto:

        li $v0, 4
        la $a0, msg1
        syscall

        li $v0, 5
        syscall

        add $t0, $v0, 0

        li $v0, 4
        la $a0, msg2
        syscall

        li $v0, 5
        syscall

        add $t1, $v0, 0

        blt $t0, 0, main
        blt $t1, 0, main
        
Fimenquanto:

# Apos verificar dados de entrada, vamos para os calculos de area:

        mul $t2, $t1, $t0

        li $v0, 4
        la $a0, msg3
        syscall

        li $v0, 1
	add $a0, $zero, $t2
        syscall
