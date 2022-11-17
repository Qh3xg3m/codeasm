.model small
.stack 100h
.data
  s1 db 'Nhap vao n: $'
  s2 db 10, 13, 'S = $'
  n  db 0
.code
  main proc
    mov ax, @data
    mov ds, ax

    ;hien thi s1
    mov ah, 9
    lea dx, s1
    int 21h

    ;nhap vao n
    mov ah, 1
    int 21h
    sub al, 48 ;chuyen thanh so
    mov n, al
    
    mov cl, 1   ; i = 1
    mov bl, 0   ; s = 0

    ;vong lap 
laplai:
    
    add bl, cl  ; s = s + i
    add cl, 1   ; i = i + 1 (i++)
    cmp cl, n
    jle laplai

    ;hien thi S
    mov ah, 9
    lea dx, s2
    int 21h

    ;chuyen thanh so va in ra
    mov ah, 2
    mov dl, bl
    add dl, 48
    int 21h

    mov ah, 4ch
    int 21h

  main endp
end