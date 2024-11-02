.text
.global _start
_start:
mov $4, %eax
mov $0, %ebx
loop_start:
  mov %ecx, %ebx
  imul %ecx, %ebx
  imul %ecx, %ebx
  cmp %eax, %ebx
  jge loop_end
  add $1, %ecx
  jmp loop_start
loop_end:
cmp %eax,%ebx
jg jgg
jmp end
jgg:
add $-1,%ecx
jmp end
end:
mov $0, %edi
syscall
