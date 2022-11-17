.model small
.stack 100h
.data         
    s1 db 'nhap chuoi: $'
    s2 db 10,13,'chuoi vua nhap la: $'  
    s3 db 10,13,'hien bang ham 9: $'   
    s4 db 10,13,'doi thanh chu hoa : $'
    s db 100 dup(?)

.code
    main proc
        
        mov ax,@data
        mov ds,ax  
        
        mov ah,9
        lea dx,s1
        int 21h
        
        mov bx,0
    nhap:
        mov ah,1
        int 21h
        cmp al,13
        je thoat
        mov s(bx),al
        inc bx
        jmp nhap  
    thoat:   
    
        mov ah,9
        lea dx,s2
        int 21h   
            
        mov cx,bx
        mov bx,0    
            
        mov ah,2
    intiep:
        mov dl,s(bx)
        int 21h
        inc bx
        cmp bx,cx
        jb intiep
        
        mov ah,9
        lea dx,s3
        int 21h
        inc bx
        mov s(bx),'$'
        mov ah,9
        lea dx,s
        int 21h
        
        mov ah,9
        lea dx,s4
        int 21h
               
        mov cx,bx 
        sub cx,1
        mov bx,0    
            
        mov ah,2
    inra:
        mov dl,s(bx) 
        sub dl,32
        cmp dl,65
        jb cong 
        jge ghi
    cong:
        add dl,32
        int 21h
        inc bx
        cmp bx,cx
        jb inra  
    ghi: 
        int 21h
        inc bx
        cmp bx,cx
        jb inra
        
        mov ah,4ch
        int 21h
    
    
    main endp
end main