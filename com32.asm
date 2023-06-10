bits 32
org 101000h
heads:
mov eax,21cd4cffh
mov eax,0
mov ds,ax
mov ecx,2000
fors:
	mov edi,0b8000h
	call rand
	and eax,4095
	add edi,eax
	call rand
	ds
	mov [edi],al
	dec ecx
	cmp ecx,0
	jnz fors	
ret
ret
ret
rand:            
	
	push ebx
	push ecx
	push edx
	push edi
	push esi
	push ds
	mov dx,0
	mov ds,dx
	mov ebx,seed
	ds
	mov edx,[ebx]
	add edx,4
	ds
	mov [ebx],edx
	mov ebx,edx
	ds
	mov eax,[ebx]
	pop ds
	pop esi
	pop edi
	pop edx
	pop ecx
	pop ebx
	
	
ret
seed dd 0f0000h
