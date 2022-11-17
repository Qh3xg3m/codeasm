.model small
.stack 100h
.data
  str db 50 dup('$')
  tb1 db 10, 13, 'Chuoi dao nguoc la: $'
.code
  main proc
    mov ax, @data
    mov ds, ax

    mov ah, 10
    lea dx, str
    int 21h

    mov ah, 9
    lea dx, tb1
    int 21h
    ;vd 123456789 => length = 9
    mov cl, str + 1 ;chuyen chieu dai chuoi vua nhap vao cl
    lea si, str + 2 ;dua si chi ve phan tu thu 2 cua mang la ky tu dau tien

    Lap1:
      push si ;dua phan tu ma si dang chir den vao ngan xep
      inc si    ; = add si, 1
      loop Lap1

      mov cl, str + 1 ;chuyen chieu dai de cx co

    Lap2
      mov ah, 2
      pop dx
      int 21h
      loop Lap2

    int 20h
  main endp
end