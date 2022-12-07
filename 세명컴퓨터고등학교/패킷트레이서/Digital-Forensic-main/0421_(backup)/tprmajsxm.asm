.model small
.data

;msg1 db 'hello', 0ah, 0dh, '$'    ;db는 define byte이다. 0ah, 0dh는 다음줄로 넘어가게 해주기위함이다.
msg1 db 48h,45h,4ch,4ch,4fh,0ah,0dh,'$' ;아스키코드
msg2 db 'Bye$'            ;'$'는 문자열의 마지막이라는것을 표시한다.

.code    
main proc
    mov ax, @data                                   
    mov ds, ax  ;데이터 세그먼트를 쓰고 싶으면 반드시 써야하는 두줄 
    
    mov ah,9
    lea dx,msg1                ;lea 출력문   dx에데가 msg1를 저장
    int 21h
    
    mov ah,9 
    lea dx,msg2
    int 21h
    
    mov ah, 4ch
    int 21h    ;dos로 복귀-(코드를 끝낼때 쓰는 두줄)

 main endp                                                      
end main
   