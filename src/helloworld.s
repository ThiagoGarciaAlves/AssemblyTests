section .text align = 0
global _start

msg db 'Hello World', 0x0a
len equ $ - msg

_start:
  mov eax, 4
  mov ebx, 1
  mov ecx, msg
  mov edx, len
  int 0x80

  mov eax, 1
  int 0x80
