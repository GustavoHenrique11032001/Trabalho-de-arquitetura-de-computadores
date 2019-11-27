.data
numero1:   .asciiz "\nDigite o primeiro numero: "
numero2:   .asciiz "\nDigite o segundo numero:  "
resultado: .asciiz "\nA soma dos numeros digitados e: "
	
	.text	
main:  	# Inserir e ler o primeiro numero
	addi $v0,$zero,4
	la $a0,numero1
	syscall
	addi $v0,$zero,5
	syscall
	add $s0,$zero,$v0

	# Inserir e ler o segundo numero
	addi $v0,$zero,4
	la $a0,numero2
	syscall
	addi $v0,$zero,5
	syscall
	add $s1,$zero,$v0


        # Inserir mensagem de resultado
	addi $v0,$zero,4
	la $a0,resultado
	syscall

	# somar os numeros
	add $t0,$s0,$s1
	addi $v0,$zero,1
	add $a0,$zero,$t0
	syscall
	
	jr $ra
