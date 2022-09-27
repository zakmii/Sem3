section .data
	s times 100 db 0
	mess1 db "Enter a number: ", 10, 0
	var1 times 8 db 0
	intin db "%ld", 0
	strin db "%s", 0
	strout db "%s", 10, 0
	mess2 db " Enter a string: ", 10, 0
	intout db "%ld", 10, 0

section .text
	global main
	extern scanf
	extern printf
	extern puts

main:
	push rbp
	lea rdi, [mess1]
	xor rax, rax
	call printf

	lea rdi, [intin]
	lea rsi, [var1]
	xor rax, rax
	call scanf
	
	lea rdi, [intin]
	mov rsi, [var1]
	xor rax, rax
	call printf
	
	pop rbp

	push rbp
	lea rdi, [mess2]
	xor rax, rax
	call printf

	lea rdi, [strin]
	mov rsi, s
	mov rax, 0
	call scanf

	lea rdi, [strin]
	mov rsi, s
	mov rax, 0
	call printf
	

	pop rbp
	mov rax, 0
	ret
	;mov rbp, rsp
	;lea rdi, [scanf_format]
	;lea rsi, [x]
	;xor eax, eax
	;call scanf
	;lea rdi, [printf_format]
	;mov rsi, [x]
	;mov rdx, rax
	;xor eax, eax
	;call printf
	;xor eax, eax
	;leave
	;ret
