.model small
.stack 100h
.data    
    s1 db "Nhap so a = $"  
    s2 db "Nhap so b = $"    
    n db 123    
.code
    main proc
        
        mov ax,@data;
        mov ds,ax;
        
        mov ah,1;
        int 21h; 
             
        sub al,48     
        mov bl,0;
        mov cl,1;
   cong:     
        add bl,cl;
        add cl,1;
        cmp cl,al;
        jle cong; 
        jg thoat
   thoat: 
        
        mov ah,2;
        mov dl,10;
        int 21h;
        
        mov ah,2;
        mov dl,13;
        int 21h;          
        
        mov al,bl
        mov bl,10  
        mov cl,0
    chia:    
        mov ah,0
        div bl
        cmp al,0
        je inso
        push ax
        add cl,1
        jmp chia
    inso:
        push ax
        add cl,1
        mov ch,0   
    intiep:
        mov ah,2
        pop dx
        mov dl,dh
        add dl,48  
        int 21h
        loop intiep                 
                                       
        mov ah,4ch;
        int 21h;   
                
    main endp  
end main 