.model small
.stack 100h
.data 
    s1 db 'Nhap a: $'      
    s2 db 10,13,'Nhap b: $'
    s3 db 10,13,'a > b $'
    s4 db 10,13,'a = b $'
    s5 db 10,13,'a < b $' 
.code
    main proc
        mov ax,@data
        mov ds,ax
        
        ; in nhap a
        mov ah,9
        lea dx,s1
        int 21h
        
        mov ah,1
        int 21h
        mov bl,al  
        
        ; in nhap b
        mov ah,9
        lea dx,s2
        int 21h
        
        mov ah,1  
        int 21h
        mov bh,al
        
        cmp bl,bh
        ja lonhon
        je bang
        jb nhohon
        
lonhon:        
        mov ah,9
        lea dx,s3
        int 21h
        jmp kt   
        
bang:        
        mov ah,9
        lea dx,s4
        int 21h
        jmp kt  
        
nhohon:        
        mov ah,9
        lea dx,s5
        int 21h
        jmp kt    
kt:
        mov ah,4ch
        int 21h        
    main endp
end main