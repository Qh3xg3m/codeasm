.model small
.stack 100h
.data
    s1 db 'nhap xau: $'
    s2 db 10,13,'xau vua nhap: $'
    s3 db 10,13,'xau chu hoa: $'
    s4 db 10,13,'xau chu thuong: $'  
    s db 100 dup(?)
    h db 100 dup(?)
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
        
        mov bx,0
        mov si,0
         
     sosanh:
        cmp s(bx),'a'
        jge chuthuong
        mov dl,s(bx)
        mov h(si),dl
        inc si
     chuthuong:
        inc bx 
        cmp bx,cx
        jbe sosanh
               
           
        mov ah,9
        lea dx,s3
        int 21h
        
        mov cx,si
        mov si,0    
            
        mov ah,2
    intiep1:
        mov dl,h(si)
        int 21h
        inc si
        cmp si,cx
        jb intiep1  
            
        mov ah,4ch
        int 21h
    main endp
end main