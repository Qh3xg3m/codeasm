.model small
.stack 100h
.data
    n db ' $'
.code
  main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 2
    mov dl, 'A'
intiep:
    int 21h
    mov bl, dl
    mov ah, 2
    ;ov dl, 32
    int 21h
    mov dl, bl
    add dl, 1
    cmp dl, 'Z'
    jbe intiep
    
    mov ah, 4ch
    int 21h
    
  main endp
  
  
end