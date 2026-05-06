#Assembly Lista 01 - Exercicio 02:

# 2.Uma fábrica de camisetas produz os tamanhos pequeno, médio e grande, cada uma sendo vendida
#respectivamente por 10, 12 e 15 reais. Construa um algoritmo em que o usuário forneça a
#quantidade de camisetas pequenas, médias e grandes referentes a uma venda, e a máquina informe
#quanto será o valor arrecadado.

.data
        msg1: .asciiz "\nN de camisas tamanho pequeno: "
        msg2: .asciiz "\nN de camisas tamanho medio: "
        msg3: .asciiz "\nN de camisas tamanho grande: "
        msg4: .asciiz "\nValor arrecadado: "

.text
main:
		
		add $t1, $v0, 10
		add $t2, $v0, 12
		add $t3, $v0, 15

#Definindo valores de entrada positivos:

enquanto1:
		li $v0, 4
		la $a0, msg1
		syscall
		
		li $v0, 5
		syscall
		add $t4, $v0, 0
		
		blt $t4, 0, enquanto1
		
enquanto2:
		
		li $v0, 4
		la $a0, msg2
		syscall
		
		li $v0, 5
		syscall
		add $t5, $v0, 0
		
		blt $t5, 0, enquanto2
		
enquanto3:
		
		li $v0, 4
		la $a0, msg3
		syscall
		
		li $v0, 5
		syscall
		add $t6, $v0, 0
		
		blt $t6, 0, enquanto3
		
Fimenquanto:

# Calculo de valor arrecadado:

		mul $t7, $t4, $t1
		mul $t8, $t5, $t2
		mul $t9, $t6, $t3
		
		add $k1, $t7, $t8
		add $k1, $k1, $t9
		
		 li $v0, 4
		 la $a0, msg4
		 syscall
		 li $v0, 1
		 add $a0, $k1, 0
		 syscall
		  
