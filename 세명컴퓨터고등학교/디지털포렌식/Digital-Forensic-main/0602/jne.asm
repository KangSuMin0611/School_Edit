.model small
.data
msg1 db '-> even number', 0ah, 0dh, '$'
msg2 db '-> odd number', 0ah, 0dh, '$'
.code
main proc
    mov ax,@data
    mov ds, ax
    
    start:
    mov ah, 1
    int 21h
    
    cmp al, '0'
    jb exit
    cmp al, '9'
    ja exit
    
    mov bl, 2
    div bl
       
    cmp ah, 0   
    jne odd
    mov ah, 9
    lea dx, msg1
    int 21h
    jmp start
       
    odd:
        mov ah, 9
        lea dx, msg2
        int 21h
        jmp start   
        
    exit:
        mov ah, 4ch
        int 21h
    