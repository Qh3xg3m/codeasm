.model small
.stack 100h
.data
  n  db  123
.code
  main proc
    mov ax, @data
    mov ds, ax

    mov cl, 0
    mov al, n
    mov bl, 10
    mov al, n
  chiatiep:
    mov ah, 0
    div bl       ;ax/10
    cmp al, 0
    je inso
    push ax
    add cl, 1
    jmp chiatiep
  inso: 
    push ax
    add cl, 1
    mov ch, 0
  intiep:
    mov ah, 2
    pop dx
    mov dl, dh
    add dl, 48
    int 21h
    loop intiep

    
  main endp
end