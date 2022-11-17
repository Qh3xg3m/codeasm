; in tu a den z
.model small
.stack 100h
.data    
.code
    main proc
      
        mov ah,2
        mov dl,'A'
intiep: 
        int 21h       
        add dl,1
        cmp dl,'Z'
        jbe intiep
                
kt:         
        mov ah,4ch
        int 21h
        
    main endp
end main