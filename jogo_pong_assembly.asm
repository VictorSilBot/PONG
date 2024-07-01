call main
halt
main:
	push r0
	mov r0, sp
	loadn r7, #2
	sub r7, r0, r7
	mov sp, r7
	loadn r1, #48
	loadn r2, #placar_jogador
	loadn r3, #0
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	loadn r1, #48
	loadn r2, #placar_ia
	loadn r3, #0
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	loadn r1, #0
	loadn r2, #gol_Jogador
	storei r2, r1
	loadn r1, #0
	loadn r2, #gol_CPU
	storei r2, r1
	loadn r1, #23
	loadn r2, #2
	div r1, r1, r2
	loadn r2, #2
	sub r1, r1, r2
	loadn r2, #jogador_inicio
	storei r2, r1
	loadn r1, #23
	loadn r2, #2
	div r1, r1, r2
	loadn r2, #2
	add r1, r1, r2
	loadn r2, #jogador_fim
	storei r2, r1
	loadn r1, #23
	loadn r2, #2
	div r1, r1, r2
	loadn r2, #2
	sub r1, r1, r2
	loadn r2, #cpu_inicio
	storei r2, r1
	loadn r1, #23
	loadn r2, #2
	div r1, r1, r2
	loadn r2, #2
	add r1, r1, r2
	loadn r2, #cpu_fim
	storei r2, r1
	loadn r1, #23
	loadn r2, #2
	div r1, r1, r2
	loadn r2, #bolaY
	storei r2, r1
	loadn r1, #37
	loadn r2, #2
	div r1, r1, r2
	loadn r2, #bolaX
	storei r2, r1
	loadn r1, #0
	loadn r2, #modo_de_jogo
	storei r2, r1
	loadn r1, #1
	not r1, r1
	inc r1
	loadn r2, #modx
	storei r2, r1
	loadn r1, #1
	not r1, r1
	inc r1
	loadn r2, #mody
	storei r2, r1
	loadn r1, #1
	not r1, r1
	inc r1
	loadn r2, #mod_CPU
	storei r2, r1
	loadn r1, #str0
	call prints
	mov r2, r7
	loadn r1, #str1
	call prints
	mov r2, r7
	loadn r1, #str2
	call prints
	mov r2, r7
	loadn r1, #str3
	call prints
	mov r2, r7
	loadn r1, #str4
	call prints
	mov r2, r7
	loadn r1, #str5
	call prints
	mov r2, r7
	loadn r1, #str6
	call prints
	mov r2, r7
	loadn r1, #str7
	call prints
	mov r2, r7
	loadn r1, #str8
	call prints
	mov r2, r7
	loadn r1, #str9
	call prints
	mov r2, r7
	loadn r1, #str10
	call prints
	mov r2, r7
	loadn r1, #str11
	call prints
	mov r2, r7
	call getc
	mov r1, r7
	loadn r2, #48
	sub r1, r1, r2
	loadn r2, #1
	sub r2, r0, r2
	storei r2, r1
	call getc
	mov r1, r7
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #1
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L1
	call loop_de_desenhar
	mov r1, r7
	call loop_do_jogo
	mov r1, r7
	loadn r1, #str12
	call prints
	mov r2, r7
	loadn r1, #gol_Jogador
	loadi r1, r1
	loadn r2, #3
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L2
	call gotoxy
	mov r1, r7
	loadn r1, #str13
	call prints
	mov r2, r7
	loadn r1, #str14
	call prints
	mov r2, r7
	loadn r1, #str15
	call prints
	mov r2, r7
	loadn r1, #placar_jogador
	call prints
	mov r2, r7
	loadn r1, #str16
	call prints
	mov r2, r7
	loadn r1, #placar_ia
	call prints
	mov r2, r7
	loadn r1, #str17
	call prints
	mov r2, r7
	loadn r1, #str18
	call prints
	mov r2, r7
	loadn r1, #str19
	call prints
	mov r2, r7
	loadn r1, #str20
	call prints
	mov r2, r7
L2:
	loadn r1, #gol_CPU
	loadi r1, r1
	loadn r2, #3
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L3
	call gotoxy
	mov r1, r7
	loadn r1, #str21
	call prints
	mov r2, r7
	loadn r1, #str22
	call prints
	mov r2, r7
	loadn r1, #str23
	call prints
	mov r2, r7
	loadn r1, #placar_jogador
	call prints
	mov r2, r7
	loadn r1, #str24
	call prints
	mov r2, r7
	loadn r1, #placar_ia
	call prints
	mov r2, r7
	loadn r1, #str25
	call prints
	mov r2, r7
	loadn r1, #str26
	call prints
	mov r2, r7
	loadn r1, #str27
	call prints
	mov r2, r7
	loadn r1, #str28
	call prints
	mov r2, r7
L3:
L1:
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #2
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L4
	loadn r1, #1
	loadn r2, #modo_de_jogo
	storei r2, r1
	call loop_de_desenhar
	mov r1, r7
	call loop_do_jogo
	mov r1, r7
	loadn r1, #str29
	call prints
	mov r2, r7
	loadn r1, #gol_Jogador
	loadi r1, r1
	loadn r2, #3
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L5
	call gotoxy
	mov r1, r7
	loadn r1, #str30
	call prints
	mov r2, r7
	loadn r1, #str31
	call prints
	mov r2, r7
	loadn r1, #str32
	call prints
	mov r2, r7
	loadn r1, #placar_jogador
	call prints
	mov r2, r7
	loadn r1, #str33
	call prints
	mov r2, r7
	loadn r1, #placar_ia
	call prints
	mov r2, r7
	loadn r1, #str34
	call prints
	mov r2, r7
	loadn r1, #str35
	call prints
	mov r2, r7
	loadn r1, #str36
	call prints
	mov r2, r7
	loadn r1, #str37
	call prints
	mov r2, r7
L5:
	loadn r1, #gol_CPU
	loadi r1, r1
	loadn r2, #3
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L6
	call gotoxy
	mov r1, r7
	loadn r1, #str38
	call prints
	mov r2, r7
	loadn r1, #str39
	call prints
	mov r2, r7
	loadn r1, #str40
	call prints
	mov r2, r7
	loadn r1, #placar_jogador
	call prints
	mov r2, r7
	loadn r1, #str41
	call prints
	mov r2, r7
	loadn r1, #placar_ia
	call prints
	mov r2, r7
	loadn r1, #str42
	call prints
	mov r2, r7
	loadn r1, #str43
	call prints
	mov r2, r7
	loadn r1, #str44
	call prints
	mov r2, r7
	loadn r1, #str45
	call prints
	mov r2, r7
L6:
L4:
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #3
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L7
	loadn r1, #str46
	call prints
	mov r2, r7
	loadn r1, #str47
	call prints
	mov r2, r7
	loadn r1, #str48
	call prints
	mov r2, r7
	loadn r1, #str49
	call prints
	mov r2, r7
	loadn r1, #str50
	call prints
	mov r2, r7
L7:
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #4
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L8
	loadn r1, #str51
	call prints
	mov r2, r7
L8:
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #1
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L10
	loadn r1, #1
	jmp L11
L10:
	loadn r2, #4
	loadn r3, #1
	sub r3, r0, r3
	loadi r3, r3
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #2
	and r2, r2, r7
	mov r1, r2
	jz L11
	loadn r1, #1
L11:
	jz L9
	loadn r1, #str52
	call prints
	mov r2, r7
L9:
	loadn r1, #0
	mov r7, r1
	jmp Lend0
Lend0:
	mov sp, r0
	pop r0
	rts
loop_de_desenhar:
	call desenho_da_BORDA
	mov r1, r7
	call desenho_do_JOGADOR
	mov r1, r7
	call desenho_da_CPU
	mov r1, r7
	call desenho_da_BOLA
	mov r1, r7
Lend1:
	rts
desenho_da_BORDA:
	push r0
	mov r0, sp
	loadn r7, #3
	sub r7, r0, r7
	mov sp, r7
	loadn r1, #0
	loadn r2, #1
	sub r2, r0, r2
	storei r2, r1
L12:
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #23
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L13
	loadn r1, #0
	loadn r2, #2
	sub r2, r0, r2
	storei r2, r1
L15:
	loadn r1, #2
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #37
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L16
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #0
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L18
	loadn r1, #2
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #0
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L20
	loadn r1, #46
	loadn r2, #mapa
	loadn r3, #1
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #37
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #2
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	jmp L21
L20:
	loadn r1, #2
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #37
	loadn r3, #1
	sub r2, r2, r3
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L22
	loadn r1, #46
	loadn r2, #mapa
	loadn r3, #1
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #37
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #2
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	jmp L23
L22:
	loadn r1, #95
	loadn r2, #mapa
	loadn r3, #1
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #37
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #2
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
L23:
L21:
	jmp L19
L18:
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #23
	loadn r3, #1
	sub r2, r2, r3
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L24
	loadn r1, #2
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #0
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L26
	loadn r1, #46
	loadn r2, #mapa
	loadn r3, #1
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #37
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #2
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	jmp L27
L26:
	loadn r1, #2
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #37
	loadn r3, #1
	sub r2, r2, r3
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L28
	loadn r1, #46
	loadn r2, #mapa
	loadn r3, #1
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #37
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #2
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	jmp L29
L28:
	loadn r1, #95
	loadn r2, #mapa
	loadn r3, #1
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #37
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #2
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
L29:
L27:
	jmp L25
L24:
	loadn r1, #2
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #0
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L32
	loadn r1, #1
	jmp L33
L32:
	loadn r2, #2
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #37
	loadn r4, #1
	sub r3, r3, r4
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #4
	and r2, r2, r7
	mov r1, r2
	jz L33
	loadn r1, #1
L33:
	jz L30
	loadn r1, #124
	loadn r2, #mapa
	loadn r3, #1
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #37
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #2
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	jmp L31
L30:
	loadn r1, #32
	loadn r2, #mapa
	loadn r3, #1
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #37
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #2
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
L31:
L25:
L19:
	loadn r1, #2
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L15
L16:
L17:
	loadn r1, #1
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L12
L13:
L14:
Lend2:
	mov sp, r0
	pop r0
	rts
desenho_do_JOGADOR:
	push r0
	mov r0, sp
	loadn r7, #3
	sub r7, r0, r7
	mov sp, r7
	loadn r1, #jogador_inicio
	loadi r1, r1
	loadn r2, #1
	sub r2, r0, r2
	storei r2, r1
L34:
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #jogador_fim
	loadi r2, r2
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L35
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #23
	loadn r3, #1
	sub r2, r2, r3
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L37
	loadn r1, #124
	loadn r2, #mapa
	loadn r3, #1
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #37
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
L37:
	loadn r1, #1
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L34
L35:
L36:
Lend3:
	mov sp, r0
	pop r0
	rts
desenho_da_CPU:
	push r0
	mov r0, sp
	loadn r7, #3
	sub r7, r0, r7
	mov sp, r7
	loadn r1, #cpu_inicio
	loadi r1, r1
	loadn r2, #1
	sub r2, r0, r2
	storei r2, r1
L38:
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #cpu_fim
	loadi r2, r2
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L39
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #23
	loadn r3, #1
	sub r2, r2, r3
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L41
	loadn r1, #124
	loadn r2, #mapa
	loadn r3, #1
	sub r3, r0, r3
	loadi r3, r3
	loadn r4, #37
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #37
	loadn r4, #4
	sub r3, r3, r4
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
L41:
	loadn r1, #1
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L38
L39:
L40:
Lend4:
	mov sp, r0
	pop r0
	rts
desenho_da_BOLA:
	loadn r1, #111
	loadn r2, #mapa
	loadn r3, #bolaY
	loadi r3, r3
	loadn r4, #37
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #bolaX
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
Lend5:
	rts
desenhar_placar:
	loadn r1, #str53
	call prints
	mov r2, r7
	loadn r1, #str54
	call prints
	mov r2, r7
	loadn r1, #str55
	call prints
	mov r2, r7
	loadn r1, #placar_jogador
	call prints
	mov r2, r7
	loadn r1, #str56
	call prints
	mov r2, r7
	loadn r1, #placar_ia
	call prints
	mov r2, r7
	loadn r1, #str57
	call prints
	mov r2, r7
	loadn r1, #str58
	call prints
	mov r2, r7
	loadn r1, #str59
	call prints
	mov r2, r7
Lend6:
	rts
loop_do_jogo:
	loadn r1, #0
	call sfill
	mov r2, r7
L42:
	loadn r1, #gol_CPU
	loadi r1, r1
	loadn r2, #3
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L45
	loadn r2, #gol_Jogador
	loadi r2, r2
	loadn r3, #3
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #2
	and r2, r2, r7
	mov r1, r2
	jz L45
	loadn r1, #1
L45:
	jz L43
	loadn r1, #0
	loadn r2, #__cursor
	storei r2, r1
	call loop_de_desenhar
	mov r1, r7
	call desenhar_placar
	mov r1, r7
	call desenha_TODO_O_MAPA
	mov r1, r7
	call entrada
	mov r1, r7
	jmp L42
L43:
L44:
Lend7:
	rts
desenha_TODO_O_MAPA:
	push r0
	mov r0, sp
	loadn r7, #3
	sub r7, r0, r7
	mov sp, r7
	loadn r1, #0
	loadn r2, #1
	sub r2, r0, r2
	storei r2, r1
L46:
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #23
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L47
	loadn r1, #0
	loadn r2, #2
	sub r2, r0, r2
	storei r2, r1
L49:
	loadn r1, #2
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #37
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L50
	loadn r1, #mapa
	loadn r2, #1
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #37
	mul r2, r2, r3
	add r1, r1, r2
	loadn r2, #2
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #1
	mul r2, r2, r3
	add r1, r1, r2
	loadi r1, r1
	call printc
	mov r2, r7
	loadn r1, #2
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L49
L50:
L51:
	loadn r1, #str60
	call prints
	mov r2, r7
	loadn r1, #1
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L46
L47:
L48:
Lend8:
	mov sp, r0
	pop r0
	rts
entrada:
	push r0
	mov r0, sp
	loadn r7, #6
	sub r7, r0, r7
	mov sp, r7
	loadn r1, #bolaY
	loadi r1, r1
	loadn r2, #1
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L53
	loadn r1, #1
	jmp L54
L53:
	loadn r2, #bolaY
	loadi r2, r2
	loadn r3, #23
	loadn r4, #2
	sub r3, r3, r4
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #4
	and r2, r2, r7
	mov r1, r2
	jz L54
	loadn r1, #1
L54:
	jz L52
	loadn r1, #mody
	loadi r1, r1
	loadn r2, #1
	not r2, r2
	inc r2
	mul r1, r1, r2
	loadn r2, #mody
	storei r2, r1
L52:
	loadn r1, #bolaX
	loadi r1, r1
	loadn r2, #1
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L55
	loadn r1, #gol_CPU
	loadi r1, r1
	loadn r2, #1
	add r1, r1, r2
	loadn r2, #gol_CPU
	storei r2, r1
	loadn r1, #gol_CPU
	loadi r1, r1
	loadn r2, #placar_ia
	loadn r3, #10
	call itos
	mov r4, r7
	loadn r1, #23
	loadn r2, #2
	div r1, r1, r2
	loadn r2, #bolaY
	storei r2, r1
	loadn r1, #37
	loadn r2, #2
	div r1, r1, r2
	loadn r2, #bolaX
	storei r2, r1
	loadn r1, #mody
	loadi r1, r1
	loadn r2, #1
	not r2, r2
	inc r2
	mul r1, r1, r2
	loadn r2, #mody
	storei r2, r1
	loadn r1, #modx
	loadi r1, r1
	loadn r2, #1
	not r2, r2
	inc r2
	mul r1, r1, r2
	loadn r2, #modx
	storei r2, r1
L55:
	loadn r1, #bolaX
	loadi r1, r1
	loadn r2, #37
	loadn r3, #2
	sub r2, r2, r3
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L56
	loadn r1, #gol_Jogador
	loadi r1, r1
	loadn r2, #1
	add r1, r1, r2
	loadn r2, #gol_Jogador
	storei r2, r1
	loadn r1, #gol_Jogador
	loadi r1, r1
	loadn r2, #placar_jogador
	loadn r3, #10
	call itos
	mov r4, r7
	loadn r1, #23
	loadn r2, #2
	div r1, r1, r2
	loadn r2, #bolaY
	storei r2, r1
	loadn r1, #37
	loadn r2, #2
	div r1, r1, r2
	loadn r2, #bolaX
	storei r2, r1
	loadn r1, #mody
	loadi r1, r1
	loadn r2, #1
	not r2, r2
	inc r2
	mul r1, r1, r2
	loadn r2, #mody
	storei r2, r1
	loadn r1, #modx
	loadi r1, r1
	loadn r2, #1
	not r2, r2
	inc r2
	mul r1, r1, r2
	loadn r2, #modx
	storei r2, r1
L56:
	loadn r1, #bolaX
	loadi r1, r1
	loadn r2, #4
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L57
	loadn r1, #jogador_inicio
	loadi r1, r1
	loadn r2, #1
	sub r2, r0, r2
	storei r2, r1
L58:
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #jogador_fim
	loadi r2, r2
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #6
	and r1, r1, r7
	jz L59
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #bolaY
	loadi r2, r2
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L61
	loadn r1, #modx
	loadi r1, r1
	loadn r2, #1
	not r2, r2
	inc r2
	mul r1, r1, r2
	loadn r2, #modx
	storei r2, r1
L61:
	loadn r1, #1
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L58
L59:
L60:
L57:
	loadn r1, #bolaX
	loadi r1, r1
	loadn r2, #37
	loadn r3, #5
	sub r2, r2, r3
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L62
	loadn r1, #cpu_inicio
	loadi r1, r1
	loadn r2, #1
	sub r2, r0, r2
	storei r2, r1
L63:
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #cpu_fim
	loadi r2, r2
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #6
	and r1, r1, r7
	jz L64
	loadn r1, #1
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #bolaY
	loadi r2, r2
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L66
	loadn r1, #modx
	loadi r1, r1
	loadn r2, #1
	not r2, r2
	inc r2
	mul r1, r1, r2
	loadn r2, #modx
	storei r2, r1
L66:
	loadn r1, #1
	sub r1, r0, r1
	loadi r2, r1
	inc r2
	storei r1, r2
	dec r2
	jmp L63
L64:
L65:
L62:
	loadn r1, #cpu_inicio
	loadi r1, r1
	loadn r2, #1
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L68
	loadn r1, #1
	jmp L69
L68:
	loadn r2, #cpu_fim
	loadi r2, r2
	loadn r3, #23
	loadn r4, #1
	sub r3, r3, r4
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #4
	and r2, r2, r7
	mov r1, r2
	jz L69
	loadn r1, #1
L69:
	jz L67
	loadn r1, #mod_CPU
	loadi r1, r1
	loadn r2, #1
	not r2, r2
	inc r2
	mul r1, r1, r2
	loadn r2, #mod_CPU
	storei r2, r1
L67:
	loadn r1, #gol_Jogador
	loadi r1, r1
	loadn r2, #3
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #2
	and r1, r1, r7
	jz L71
	loadn r2, #gol_CPU
	loadi r2, r2
	loadn r3, #3
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #2
	and r2, r2, r7
	mov r1, r2
	jz L71
	loadn r1, #1
L71:
	jz L70
	loadn r1, #32
	loadn r2, #mapa
	loadn r3, #bolaY_antiga
	loadi r3, r3
	loadn r4, #37
	mul r3, r3, r4
	add r2, r2, r3
	loadn r3, #bolaX_antiga
	loadi r3, r3
	loadn r4, #1
	mul r3, r3, r4
	add r2, r2, r3
	storei r2, r1
	loadn r1, #bolaX
	loadi r1, r1
	loadn r2, #bolaX_antiga
	storei r2, r1
	loadn r1, #bolaY
	loadi r1, r1
	loadn r2, #bolaY_antiga
	storei r2, r1
	loadn r1, #bolaX
	loadi r1, r1
	loadn r2, #modx
	loadi r2, r2
	add r1, r1, r2
	loadn r2, #bolaX
	storei r2, r1
	loadn r1, #bolaY
	loadi r1, r1
	loadn r2, #mody
	loadi r2, r2
	add r1, r1, r2
	loadn r2, #bolaY
	storei r2, r1
	loadn r1, #modo_de_jogo
	loadi r1, r1
	loadn r2, #0
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L72
	loadn r1, #cpu_inicio
	loadi r1, r1
	loadn r2, #mod_CPU
	loadi r2, r2
	add r1, r1, r2
	loadn r2, #cpu_inicio
	storei r2, r1
	loadn r1, #cpu_fim
	loadi r1, r1
	loadn r2, #mod_CPU
	loadi r2, r2
	add r1, r1, r2
	loadn r2, #cpu_fim
	storei r2, r1
L72:
	inchar r1
	loadn r2, #3
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #3
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #255
	sub r1, r1, r2
	loadn r2, #4
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #3
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #119
	sub r1, r1, r2
	loadn r2, #5
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #4
	sub r1, r0, r1
	loadi r1, r1
	jz L73
	loadn r1, #3
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #2
	sub r2, r0, r2
	storei r2, r1
	loadn r1, #2
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #119
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L75
	loadn r1, #1
	jmp L76
L75:
	loadn r2, #2
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #87
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #4
	and r2, r2, r7
	mov r1, r2
	jz L76
	loadn r1, #1
L76:
	jz L74
	loadn r1, #jogador_inicio
	loadi r1, r1
	loadn r2, #1
	cmp r1, r2
	push fr
	pop r1
	not r1, r1
	loadn r7, #4
	and r1, r1, r7
	jz L77
	loadn r1, #jogador_inicio
	loadi r1, r1
	loadn r2, #1
	sub r1, r1, r2
	loadn r2, #jogador_inicio
	storei r2, r1
	loadn r1, #jogador_fim
	loadi r1, r1
	loadn r2, #1
	sub r1, r1, r2
	loadn r2, #jogador_fim
	storei r2, r1
L77:
L74:
	loadn r1, #2
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #115
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L79
	loadn r1, #1
	jmp L80
L79:
	loadn r2, #2
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #83
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #4
	and r2, r2, r7
	mov r1, r2
	jz L80
	loadn r1, #1
L80:
	jz L78
	loadn r1, #jogador_inicio
	loadi r1, r1
	loadn r2, #23
	loadn r3, #5
	sub r2, r2, r3
	cmp r1, r2
	push fr
	pop r1
	not r1, r1
	loadn r7, #4
	and r1, r1, r7
	jz L81
	loadn r1, #jogador_inicio
	loadi r1, r1
	loadn r2, #1
	add r1, r1, r2
	loadn r2, #jogador_inicio
	storei r2, r1
	loadn r1, #jogador_fim
	loadi r1, r1
	loadn r2, #1
	add r1, r1, r2
	loadn r2, #jogador_fim
	storei r2, r1
L81:
L78:
	loadn r1, #2
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #112
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L83
	loadn r1, #1
	jmp L84
L83:
	loadn r2, #2
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #80
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #4
	and r2, r2, r7
	mov r1, r2
	jz L84
	loadn r1, #1
L84:
	jz L82
	loadn r1, #cpu_inicio
	loadi r1, r1
	loadn r2, #1
	cmp r1, r2
	push fr
	pop r1
	not r1, r1
	loadn r7, #4
	and r1, r1, r7
	jz L85
	loadn r1, #modo_de_jogo
	loadi r1, r1
	loadn r2, #1
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L86
	loadn r1, #cpu_inicio
	loadi r1, r1
	loadn r2, #1
	sub r1, r1, r2
	loadn r2, #cpu_inicio
	storei r2, r1
	loadn r1, #cpu_fim
	loadi r1, r1
	loadn r2, #1
	sub r1, r1, r2
	loadn r2, #cpu_fim
	storei r2, r1
L86:
L85:
L82:
	loadn r1, #2
	sub r1, r0, r1
	loadi r1, r1
	loadn r2, #108
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L88
	loadn r1, #1
	jmp L89
L88:
	loadn r2, #2
	sub r2, r0, r2
	loadi r2, r2
	loadn r3, #76
	cmp r2, r3
	push fr
	pop r2
	loadn r7, #4
	and r2, r2, r7
	mov r1, r2
	jz L89
	loadn r1, #1
L89:
	jz L87
	loadn r1, #cpu_inicio
	loadi r1, r1
	loadn r2, #23
	loadn r3, #5
	sub r2, r2, r3
	cmp r1, r2
	push fr
	pop r1
	not r1, r1
	loadn r7, #4
	and r1, r1, r7
	jz L90
	loadn r1, #modo_de_jogo
	loadi r1, r1
	loadn r2, #1
	cmp r1, r2
	push fr
	pop r1
	loadn r7, #4
	and r1, r1, r7
	jz L91
	loadn r1, #cpu_inicio
	loadi r1, r1
	loadn r2, #1
	add r1, r1, r2
	loadn r2, #cpu_inicio
	storei r2, r1
	loadn r1, #cpu_fim
	loadi r1, r1
	loadn r2, #1
	add r1, r1, r2
	loadn r2, #cpu_fim
	storei r2, r1
L91:
L90:
L87:
L73:
L70:
Lend9:
	mov sp, r0
	pop r0
	rts
gotoxy:
	loadn r1, #0
	call sfill
	mov r2, r7
	loadn r1, #0
	loadn r2, #__cursor
	storei r2, r1
Lend10:
	rts
gol_Jogador : var #1
gol_CPU : var #1
mapa : var #851
jogador_inicio : var #1
jogador_fim : var #1
cpu_inicio : var #1
cpu_fim : var #1
bolaY : var #1
bolaX : var #1
bolaX_antiga : var #1
bolaY_antiga : var #1
modo_de_jogo : var #1
modx : var #1
mody : var #1
mod_CPU : var #1
placar_jogador : var #6
placar_ia : var #6
str0 : string "  _______  _______  ___    __  _______ \n"
str1 : string " |   _   ||       ||   |  |  ||       |\n"
str2 : string " |  | |  ||   _   ||    | |  ||   ____|\n"
str3 : string " |  |_|  ||  | |  ||     ||  ||  | ___ \n"
str4 : string " |    ___||  |_|  ||  ||     ||  ||   |\n"
str5 : string " |   |    |       ||  | |    ||  |_|  |\n"
str6 : string " |___|    |_______||__|  |___||_______|\n\n"
str7 : string "    DIGITE O VALOR E APERTE <ENTER>\n\n"
str8 : string "          1 - SINGLE PLAYER        \n"
str9 : string "          2 - MULTIPLAYER          \n"
str10 : string "          3 - CREDITOS             \n"
str11 : string "          4 - QUIT                 \n"
str12 : string "\n \n"
str13 : string "           -----------------\n"
str14 : string "           |               |\n"
str15 : string "           | PLACAR: "
str16 : string " x "
str17 : string " |\n"
str18 : string "           |               |\n"
str19 : string "           -----------------\n"
str20 : string "\n\n                VICTORY\n\n"
str21 : string "           -----------------\n"
str22 : string "           |               |\n"
str23 : string "           | PLACAR: "
str24 : string " x "
str25 : string " |\n"
str26 : string "           |               |\n"
str27 : string "           -----------------\n"
str28 : string "\n\n               GAME OVER\n\n"
str29 : string "\n \n"
str30 : string "           -----------------\n"
str31 : string "           |               |\n"
str32 : string "           | PLACAR: "
str33 : string " x "
str34 : string " |\n"
str35 : string "           |               |\n"
str36 : string "           -----------------\n"
str37 : string "\n\n            JOGADOR 1 VENCE!\n\n"
str38 : string "           -----------------\n"
str39 : string "           |               |\n"
str40 : string "           | PLACAR: "
str41 : string " x "
str42 : string " |\n"
str43 : string "           |               |\n"
str44 : string "           -----------------\n"
str45 : string "\n\n            JOGADOR 2 VENCE!\n\n"
str46 : string "\n"
str47 : string "           Autores do Jogo:\n\n"
str48 : string "         Victor Silva Botelho\n\n              (15645421)\n\n"
str49 : string "      Matheus D'Afonseca e Silva\n\n              (15640447)\n\n"
str50 : string "    Joao Victor Andrade dos Santos\n\n              (15522511)\n"
str51 : string "\n\n          Obrigado por jogar!"
str52 : string "\nDigite um valor valido!\n"
str53 : string "           -----------------\n"
str54 : string "           |               |\n"
str55 : string "           | PLACAR: "
str56 : string " x "
str57 : string " |\n"
str58 : string "           |               |\n"
str59 : string "           -----------------\n"
str60 : string "\n"
; getc   : aguarda e le um caracter do teclado
; out r7 : caracter lido
getc:
  push r1

  loadn r1, #255

  getc_loop:
    inchar r7
    cmp r7, r1
    jeq getc_loop

  getc_rts:
    pop r1
    rts

; scans   : aguarde e le uma string do teclado
; in * r1 : string de destino
; in r2   : numero de caracteres a serem lidos
scans:
  push r3
  push r4
  push r5
  push r6

  xor r3, r3, r3
  loadn r4, #13 ; '\r'
  loadn r5, #255  

  scans_loop:
    cmp r2, r3
    jel scans_rts

    scans_loop_inchar:
      inchar r6
      cmp r6, r5
      jeq scans_loop_inchar
    cmp r6, r4
    jeq scans_rts

    storei r1, r6
    inc r1
    dec r2
    jmp scans_loop

  scans_rts:
    storei r1, r3
    
    pop r3
    pop r4
    pop r5
    pop r6
    rts

; puts    : imprime uma string em uma posição da tela
; in * r1 : string
; in r2   : posição
puts:
  push r3
  push r4
  push r5
  push r6
  push r7

  xor r5, r5, r5
  loadn r6, #'\n'
  loadn r7, #40

  puts_loop:
    loadi r3, r1

    cmp r3, r5
    jel puts_rts

    cmp r3, r6
    jne puts_loop_ne
    mod r4, r2, r7
    sub r4, r7, r4
    add r2, r2, r4
    dec r2

    puts_loop_ne:
    outchar r3, r2
    inc r1
    inc r2
    jmp puts_loop

  puts_rts:
    pop r7
    pop r6
    pop r5
    pop r4
    pop r3
    rts

; printc : imprime um caracter na posição do cursor
; in r1  : caracter
printc:
  push r2

  load r2, __cursor
  outchar r1, r2
  inc r2
  store __cursor, r2

  printc_rts:
    pop r2
    rts

; prints  : imprime uma string na posição do cursor
; in * r1 : string
prints:
  push r2

  load r2, __cursor
  call puts
  store __cursor, r2

  prints_rts:
    pop r2
    rts

; sfill : preenche a tela com um caracter
; in r1 : caracter
sfill:
  push r2

  loadn r2, #1200

  sfill_loop:
    dec r2
    outchar r1, r2
    jnz sfill_loop

  sfill_rts:
    pop r2
    rts

__cursor : var #1 
static __cursor, #0
; stoi    : converte uma string para um inteiro, seguindo a base especificada
; in * r1 : string
; in r2   : base
; out r7  : numero
stoi:
  push r3
  push r4
  push r5
  push r6

  xor r4, r4, r4
  loadn r5, #'0'
  loadn r6, #'W'
  xor r7, r7, r7

  stoi_loop:
    loadi r3, r1
    cmp r3, r4
    jeq stoi_rts

    cmp r3, r6
    jeg stoi_loop_eg  
    
    sub r3, r3, r5
    jmp stoi_loop_le
    stoi_loop_eg:
    sub r3, r3, r6
    stoi_loop_le:

    mul r7, r7, r2
    add r7, r7, r3

    inc r1
    jmp stoi_loop

  stoi_rts:
    pop r6
    pop r5
    pop r4
    pop r3
    rts

; itos    : converte um inteiro para uma string, seguindo a base especificada
; in r1   : numero
; in * r2 : string de destino
; in r3   : base
itos:
  push r4
  push r5
  push r6
  push r7
  push r2

  loadn r5, #'0'
  loadn r6, #10
  loadn r7, #39

  itos_loop:
    mod r4, r1, r3

    cmp r4, r6
    jle itos_loop_le
    add r4, r4, r7

    itos_loop_le:
    add r4, r4, r5
    storei r2, r4

    inc r2
    div r1, r1, r3
    jnz itos_loop

  storei r2, r1

  pop r2
  mov r1, r2
  call strrev

  itos_rts:
    pop r7
    pop r6
    pop r5
    pop r4
    rts

; memset  : preenche um bloco de memoria continuo com um valor
; in * r1 : endereco do bloco de memoria
; in r2   : valor a ser escrito
; in r3   : tamanho do bloco
memset:
  push r4

  xor r4, r4, r4

  memset_loop:
    cmp r3, r4
    jel memset_rts

    storei r1, r2

    inc r1
    dec r3
    jmp memset_loop

  memset_rts:
    pop r4
    rts

; memcpy  : copia um bloco de memoria continuo para um endereco de destino
; in * r1 : destino
; in * r2 : origem
; in r3   : tamanho a ser copiado
memcpy:
  push r4
  push r5

  xor r4, r4, r4

  memcpy_loop:
    cmp r3, r4
    jel memcpy_rts

    loadi r5, r2
    storei r1, r5

    inc r1
    inc r2
    dec r3
    jmp memcpy_loop

  memcpy_rts:
    pop r5
    pop r4
    rts

; strcmp  : compara duas strings terminadas em '\0'
; in * r1 : primeira string
; in * r2 : segunda string
; out r7  : 0 caso forem diferentes, 1 caso forem iguais
strcmp:
  push r3
  push r4
  push r5

  xor r3, r3, r3

  strcmp_loop:
    loadi r4, r1
    loadi r5, r2
    
    cmp r4, r3
    jeq strcmp_rts
    cmp r4, r5
    jne strcmp_rts

    inc r1
    inc r2
    jmp strcmp_loop
  
  strcmp_rts:
    sub r7, r4, r5
    
    pop r5
    pop r4
    pop r3
    rts

; strrev  : reverte uma string (inplace)
; in * r1 : string
strrev:
  push r2
  push r3
  push r7

  ; endereco de memoria do fim da string - 1
  ; r1 + (strlen(r1) - 1)
  push r1
  call strlen
  pop r1
  
  dec r7
  add r7, r7, r1

  strrev_loop:
    ; troca a posicao entre os caracteres
    loadi r2, r1
    loadi r3, r7
    storei r1, r3 
    storei r7, r2

    dec r7
    inc r1

    ; r1 >= r7 ? return
    cmp r1, r7
    jle strrev_loop

  strrev_rts:
    pop r7
    pop r3
    pop r2
    rts

; strlen  : calcula o numero de caracteres de uma string (ignorando '\0')
; in * r1 : string
; out r7  : numero de caracteres
strlen:
  push r2 ; caractere da string apontado por r2
  push r3 ; caractere que termina a string ('\0')

  xor r2, r2, r2
  xor r7, r7, r7

  strlen_loop:
    loadi r3, r1

    cmp r3, r2
    jeq strlen_rts
    
    inc r1
    inc r7
    jmp strlen_loop

  strlen_rts:
    pop r3
    pop r2
    rts
