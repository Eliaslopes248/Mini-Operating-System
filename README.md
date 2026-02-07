# Mini-Operating-System

====================================================
PROJECT DESCRIPTION:
====================================================
    This project is a mini operating system made from scratch. Why am I doing this? Well.... because I'm just curious, to put it simply.
    The operating system will be made to run on x86 processors, and will
    have a boot loader made in NASM, a kernel made in C, along with other components.

    Since Im primarily programming via a MacBook, I will be using a 
    linux docker container

    This operating system will also be fully ran inside a QEMU
    emulator.


====================================================
MY THOUGHTS:
====================================================
    This project is one I wanted to do for some time now. Though it may sound dawnting, Im ready to take it head on!
    This project will get me hands on practice with Operating Systems. I hope to understand more of how computers truly work under the hood.

    This project will introduce me to NASM assembly language, and use it 
    interact with the system BIOS, Disk memory, and more.

====================================================
TASKS:
====================================================
This README.md file will also have my task lists so you can see exactly where I am in the process of this project!

# SET UP OS MEMORY STACK / SEGMENTS / GDT BEFORE PASSING TO KERNEL

1. Decide which CPU mode your kernel will start in
    USE -> 32-bit protected mode (most common)

2. Establish a known execution baseline
    - Disable interrupts temporarily (You don’t want an interrupt firing mid-setup)
    - Assume all registers are garbage
    - Do not rely on anything BIOS left behind

3. Define a Global Descriptor Table (GDT)

4. Load the GDT

5. Switch CPU into protected mode

6. Load segment selectors from the GDT

7. Pick a safe memory region for the stack

8. Not overlapping bootloader

9. Not overlapping kernel code/data

10. Grows downward

11. Load the stack segment

12. Set the stack pointer to the top of that region

13. Decide your kernel entry convention
    - One entry point
    - No arguments (or fixed, documented ones)

14. Ensure stack alignment (important for C)

15. Especially if using 32-bit or 64-bit mode

16. Clear direction flag
    (C string ops assume forward direction)