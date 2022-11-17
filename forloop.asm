; dung for loop in tu 0 den 9
.model small
.stack 100h
.data 
    
.code
    main proc
        
        mov cx,10
        mov ah,2
        mov dl,'0'
intiep:
        int 21h
        add dl,1
        loop intiep
        
        mov ah,4ch
        int 21h
        
        
    main endp
end main