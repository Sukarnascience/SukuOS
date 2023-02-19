; @author : Sukarna Jana
; @date   : 19/02/2023
; @version: 0.1
; "SukuOS" on x86

[org 0x7c00]
mov ah, 0x0e
mov bx, introofOS

printStringIntro:
    mov al, [bx]
    cmp al, 0
    je end
    int 0x10
    inc bx
    jmp printStringIntro
end:
    jmp $

introofOS:
    db "Hello, Sukarna Jana here the creator of SukuOS", 0

; Boot Commands 
times 510-($-$$) db 0
db 0x55, 0xaa