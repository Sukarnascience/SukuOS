; @author : Sukarna Jana
; @date   : 19/02/2023
; @version: 0.1
; "SukuOS" on x86

[org 0x7c00]
mov ah, 0x0e
mov bx, introofOS

printString:
    mov al, [bx]
    cmp al, 0
    je end
    int 0x10
    inc bx
    jmp printString
end:
    jmp $

introofOS:
    db "Hello, Sukarna Jana here... this is SukuOS which you are seeing", 0

; Boot Commands 
times 510-($-$$) db 0
db 0x55, 0xaa