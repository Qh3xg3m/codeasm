.model small
.stack 100h
.data
    s1 db 'nhap ki tu: $'
    s2 db 10,13,'ki tu da nhap: $'
    s3 db 10,13,'bye!$'
.code
    main proc
        mov ax,@data
        mov ds,ax
nhaptiep:        
        mov ah,9
        lea dx,s1
        int 21h
        
        mov ah,1
        int 21h 
        mov bl,al
        cmp al,13 ; so sanh voi enter
        je thoat
       
        mov ah,9
        lea dx,s2
        int 21h
        
        mov ah,2
        mov dl,bl
        int 21h  
        jmp nhaptiep
thoat:
        mov ah,9
        lea dx,s3
        int 21h
    main endp
end main