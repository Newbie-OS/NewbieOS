org 0x7C00
bits 16

%define ENDL 0x0D, 0x0A

start:
    jmp main

; prints a string to screen
; Params:
;   - ds:si points to a string
puts:
    ; save registers that we will modify (callee saved)
    push si
    push ax

.loop:
    lodsb               ; loads next character in al
    or al, al           ; verify if next character is null
    jz .done

    mov ah, 0x0E        ; call BIOS interrupt
    mov bh, 0           ; sets page number to 0
    int 0x10

    jmp .loop

.done:
    ; restore registers in correct order
    pop ax
    pop si
    ret

main:
    ; setup data segments
    mov ax, 0           ; cannot write to ds, es directly
    mov ds, ax
    mov es, ax

    ; setup stack
    mov ss, ax
    mov sp, 0x7C00      ; stack grows downwards in memory (high address to low address)

    ; print message
    mov si, msg_hello
    call puts

    hlt

.halt:
    jmp .halt

msg_hello: db 'Hello world!', ENDL, 0

times 510-($-$$) db 0
dw 0AA55h
