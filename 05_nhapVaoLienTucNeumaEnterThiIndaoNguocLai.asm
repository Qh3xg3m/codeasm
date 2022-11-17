.model small
.stack 100h
.data
  s1 db 10, 13, 'Nhap vao ki tu: $'
  s2 db 10, 13, 'Ki tu vua nhap: $'
.code
  main proc
    mov ax, @data
    mov ds, ax

    mov cx, 0
    mov ah, 9
    lea dx, s1
    int 21h

  nhaptiep:
    mov ah, 1
    int 21h
    cmp al, 13
    je dungnhap
    push ax
    add cx, 1
    jmp nhaptiep
  dungnhap:
    mov ah, 9
    lea dx, s2
    int 21h

  hienNguoc:
    mov ah, 2
    pop dx  
    int 21h
    loop hienNguoc

  mov ah, 4ch
  int 21h
  main endp
end