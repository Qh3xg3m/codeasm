.model small
.stack 100h
.data
    s1 db 'Nhap ki tu: $'
    s2 db 10,13,'Doi thanh chu hoa: $'
    
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        mov ah,9
        lea dx,s1
        int 21h
        
        mov ah,1
        int 21h
        sub al,32
        mov bl,al
        
        mov ah,9
        lea dx,s2
        int 21h
            
        mov ah,2
        mov dl,bl
        int 21h
        
        mov ah,4ch
        int 21h
        
    main endp
end main