SEG_COD           SEGMENT                           ; inicio segto. de codigo
ASSUME CS:SEG_COD,DS:SEG_COD,SS:SEG_COD,ES:SEG_COD  ; posiciona regs segtos
PROG2 PROC                                          ; procedure
                                                    
MOV AH,02                                           ; serv. 02 (mostra carac)
MOV CX,26
MOV DL,40h                                          ; antes do A

MAIUSCULAS:
  ADD DL,1
  INT 21h                                           ; chama so
LOOP MAIUSCULAS

MOV DL,0Dh                                          ; retorno do carro
INT 21H
MOV DL,0Ah                                          ; pula linha
INT 21H

MOV CX,26
MOV DL,60h

MINUSCULAS:
  ADD DL,1
  INT 21h
LOOP MINUSCULAS

MOV Ah, 4Ch                                         ; serv. 4Ch (fim prog)
INT 21h                                             ; chama so
PROG2  ENDP                                         ; final da procedure
SEG_COD ENDS                                        ; final do segmento
END PROG2                                           ; inicia exec em PROG2

;---------------------------fim------------------------------
