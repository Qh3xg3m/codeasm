.model small
.stack 100h
.data
  s1 db 'Nhap so 1: $'
  s2 db 10, 13, 'Nhap so 2: $'
  s3 db 10, 13, 'Nhap so 3: $'
  s4 db 10, 13, 'cac so da dao nguoc: $'
.code
  main proc
    mov ax, @data
    mov ds, ax

    ;nhap so 1
    mov ah, 9
    lea dx, s1
    int 21h

    mov ah, 1
    int 21h
    push ax

    ;nhap so 2
    mov ah, 9
    lea dx, s2
    int 21h

    mov ah, 1
    int 21h
    push ax

    ;nhap so 3
    mov ah, 9
    lea dx, s3
    int 21h

    mov ah, 1
    int 21h
    push ax

    ;hien s4
    mov ah, 9
    lea dx, s4
    int 21h

    ;pop ra nao
    mov ah, 2
    pop dx
    int 21h
    pop dx
    int 21h
    pop dx
    int 21h

    mov ah, 4ch
    int 21h
    
  main endp
end