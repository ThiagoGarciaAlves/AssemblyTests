SEG_COD           SEGMENT                           ; inicio segto. de codigo
ASSUME CS:SEG_COD,DS:SEG_COD,SS:SEG_COD,ES:SEG_COD  ; posiciona regs segtos
PROG3 PROC                                          ; procedure
                                                    
MOV AH,02                                           ; serv. 02 (mostra carac)
MOV CX,26
MOV DL,40h                                          ; antes do A

LETRAS:
  ADD DL,1
  INT 21h                                           ; chama so
  XOR DL,20h
  INT 21h
  XOR DL,20h
LOOP LETRAS

MOV Ah, 4Ch                                         ; serv. 4Ch (fim prog)
INT 21h                                             ; chama so
PROG3  ENDP                                         ; final da procedure
SEG_COD ENDS                                        ; final do segmento
END PROG3                                           ; inicia exec em PROG3

;---------------------------fim------------------------------
