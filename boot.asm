[org 0x7c00]
mov ah, 0x0e
mov bx, message

printString:
	mov al, [bx]
	cmp al, 0
	je end
	int 0x10
	inc bx
	jmp printString

end:
	jmp $

message:

db "Ola, Diego", 0

times 510-($-$$) db 0x00
dw 0xAA55
