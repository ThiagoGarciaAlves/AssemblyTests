SEG_COD           SEGMENT                           ; inicio segto. de codigo
ASSUME CS:SEG_COD,DS:SEG_COD,SS:SEG_COD,ES:SEG_COD  ; posiciona regs segtos
PROG1 PROC                                          ; procedure
                                                    
MOV AH,02                                           ; serv. 02 (mostra carac)
MOV DL,41h                                          ; letra A
INT 21h                                             ; chama so

MOV Ah, 4Ch                                         ; serv. 4Ch (fim prog)
INT 21h                                             ; chama so

PROG1  ENDP                                         ; final da procedure
SEG_COD ENDS                                        ; final do segmento
END PROG1                                           ; inicia exec em PROG1

;---------------------------fim------------------------------
