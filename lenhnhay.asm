;in cac chu so tu 1 den 10

.model small
.stack 100h
.data
.code
    main proc    
       
        mov ah,2
        ;mov dl,'0'
        
    ;inxuoi:
        ;int 21h
        ;add dl,1
        ;cmp dl,'9'
        ;jle inxuoi
                 
                 
        mov dl,'9'
    innguoc:   
        int 21h  
        sub dl,1
        cmp dl,'0'
        jge innguoc
    main endp
end main