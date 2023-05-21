Part 2: How to Load Data from Floppy Disk

Bootloader vs Kernel?

A bootloader is a small program that is stored on a computer's hard drive or other storage device. When a computer is turned on, the bootloader is loaded into the computer's memory and begins executing. The bootloader's job is to load the operating system kernel into memory and start it running.

The kernel is the core of the operating system. It is responsible for managing the computer's hardware resources, such as the CPU, memory, and storage devices. The kernel also provides services to other programs, such as file access, networking, and input/output.

The bootloader and the kernel are two essential parts of an operating system. The bootloader loads the kernel into memory and starts it running, and the kernel manages the computer's hardware resources and provides services to other programs.

Here is a table that summarizes the key differences between bootloaders and kernels:

| Feature | Bootloader | Kernel |
|---|---|---|
| Purpose | Loads the operating system kernel into memory and starts it running | Manages the computer's hardware resources and provides services to other programs |
| Location | Stored on a computer's hard drive or other storage device | Stored in the computer's memory |
| Size | Typically very small, in the range of a few kilobytes | Typically much larger, in the range of several megabytes or gigabytes |
| Complexity | Relatively simple | Very complex |

Here are some additional details about bootloaders and kernels:

- Bootloaders are typically stored in the first sector of a computer's hard drive or other storage device. This sector is called the Master Boot Record (MBR). When a computer is turned on, the BIOS (Basic Input/Output System) loads the bootloader from the MBR into memory and starts executing it.
- The kernel is typically stored in a file on the computer's hard drive. When the bootloader loads the kernel into memory, it starts executing the kernel's main function. The kernel's main function initializes the computer's hardware resources and starts other processes, such as the init process.
- The init process is the first process that is started by the kernel. The init process's job is to start other processes, such as the shell process and the graphical user interface (GUI) process.

Why Floppy Disk?

Simplest form of disk storage --> ease of use, universal support for BIOSes and Virtualization software



FAQ:
1. Is bootloader part of kernel? No


TODO:
- Learn more about bootloader, 16 bit vs 32 bit bootloader
- Learn more about disk storage devices
- Learn about BIOSes