.model small
.data
input_string db 'input decimal number...$'
string db '->$'

.code
main proc
    mov ax, @data
    mov ds,ax
    
    lea dx, input_string
    mov ah, 9
    int 21h
    
    mov ah, 1
    int 21h  ; 첫번째 십의 자리 입력
    
    sub al, 30h ;십진수로 ex) 33 - 30 = 3 
    
    mov bl, 10
    mul bl ; 십의 자리로 만들기 al x bl ex) 3 x 10 = 30
    
    mov bl, al ;결과 bl로 임시저장
    
    mov ah, 1
    int 21h ;일의 자리를 입력받음
    sub al, 30h
    
    add bl, al ;십의자리와 일의자리를 더함
    
    lea dx, string
    mov ah, 9
    int 21h
    
    mov cx, 8 ; 8회 반복, 비트를 만듦 
    
    shift:
    shl bl, 1
    lahf ;플래그 레지스터 특정비트의 값을 구해서 ah에 저장함 
    and ah, 00000001 ;맨 마지막 값만 필요하기 때문에 맨 마지막이 1인 8비트까지 값과 and연산을 한다.
    
    mov dl,ah
    add dl,30h
    mov ah, 2
    int 21h
    loop shift
    
    mov ah, 4ch
    int 21h
    
    main endp
end main
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    