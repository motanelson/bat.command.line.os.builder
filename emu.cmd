%color 60
%echo off
.\gcc.exe -m32 -o3 -lgcc -nostdlib -c kernel.c -o .\kernel.o 
.\as.exe --32 boot.S -o .\b.o 
c:\nasm\nasm.exe boot.asm -o .\k.bin
.\ldc.exe -T link.ld .\b.o kernel.o -o .\ke.exe -nostdlib 
.\objcopy.exe -O binary .\ke.exe .\kernel.c32
c:\windows\system32\cmd.exe /c "copy /b k.bin+kernel.c32 kernel.bin "
.\qemu-system-x86_64.exe -fda .\kernel.bin