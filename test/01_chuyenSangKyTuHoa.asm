;nhap vao mot ki tu va chuyen ki tu do sang ki tu hoa
.model small
.stack 100h
.data
  s1 db 'Nhap vao mot ki tu: $'
  s2 db 13, 10, 'Ki tu hoa la: $'
  char db ?, '$' 
.code
  main proc
    mov ax, @data
    mov ds, ax

    ;hien thi s1
    mov ah, 9
    lea dx, s1
    int 21h

    ;nhap vao mot ki tu
    mov ah, 1
    int 21h

    sub al, 32   ;tru di 32 de ra ki tu hoa
    mov char, al ;gan al vao char

    ;hien thi s2
    mov ah, 9
    lea dx, s2
    int 21h

    ;hien thi ki tu hoa
    mov ah, 9
    lea dx, char
    int 21h

    ;ket thuc chuong trinh
    mov ax, 4ch
    int 21h

  main endp
end