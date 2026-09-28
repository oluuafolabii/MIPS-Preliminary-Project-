# MIPS preliminary project: rotating a nine-character string

`project_0.s` is a small MIPS assembly program that prints two sets of rotations of a nine-character literal. It uses nested loops, remainder arithmetic, byte loads, and MIPS educational-simulator syscalls; there is no interactive input.

## What the program does

- The forward pass prints nine lines of nine characters. For line `i` and character `j` (both starting at zero), it reads index `(i + 8 + j) % 9`.
- The backward pass prints another nine lines, reading index `8 - ((i + j) % 9)`.
- It prints each character with syscall 11, adds a newline after each line, and exits with syscall 10.

The string is literal program data; it is not read from a user or generated at runtime. The output is intended as an exercise in addressing and loop control, not a general-purpose string-rotation utility.

## Running it

Open `project_0.s` in a MIPS simulator that supports the assembly syntax and syscalls used here, assemble it, and run `main`. Inspect the console for the 18 printed lines. The source includes `li`, `div`/`mfhi`, `lb`, branches, and syscalls 10 and 11.

This README describes the checked-in source; execution in a simulator has **not** been verified for this documentation update. The repository has no test harness or build configuration. `README.txt` is an older link-only file retained as-is.
