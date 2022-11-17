.model small
.stack 100h
.data         
    s1 db 'Nhap vao mot chuoi: $'
    s2 db 10, 13, 'Chuoi da nhap: $' 
    upStr db 10, 13, 'Uppercase: $'       
    loStr db 10, 13, 'Lowercase: $'
    str db 100 dup('$')  

.code
    main proc
        
        mov ax, @data
        mov ds, ax  
        
        mov ah, 9
        lea dx, s1
        int 21h
        
        mov bx, 0 
     input:
        mov ah, 1
        int 21h  
        cmp al, 13
        je quit
        mov str(bx), al
        inc bx
        jmp input
     quit: 
        mov ah, 9
        lea dx, s2
        int 21h
        mov cx, bx
        mov bx, 0     
        mov ah, 2
    resumePrint:
        mov dl, str(bx)
        int 21h
        inc bx
        cmp bx, cx
        jb resumePrint 
        
        mov ah, 9
        lea dx, upStr
        int 21h 
        
        mov cx, bx
        mov bx, 0
        
        mov ah, 2
    resume:
        mov dl, str(bx) 
        cmp dl, 65
        jae check
        jb s
    check:
        cmp dl, 90
        jle print
        jg s
    print:
        int 21h
        inc bx
        cmp bx, cx
        jb resume  
    s:
        inc bx
        cmp bx, cx
        jb resume              
         
        mov ah, 9
        lea dx, loStr
        int 21h
        
        mov cx, bx
        mov bx, 0
        
        mov ah, 2
    resume_1:
        mov dl, str(bx) 
        cmp dl, 97
        jae check_1
        jb s_1
    check_1:
        cmp dl, 122
        jle print_1
        jg s_1
    print_1:
        int 21h
        inc bx
        cmp bx, cx
        jb resume_1  
    s_1:
        inc bx
        cmp bx, cx
        jb resume_1  
        
    main endp
end main