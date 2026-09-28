# MIPS preliminary project: rotating a nine-character string

`project_0.s` is a small MIPS assembly program that prints two sets of rotations of a nine-character literal. It uses nested loops, remainder arithmetic, byte loads, and MIPS educational-simulator syscalls; there is no interactive input.

## What the program does

- The forward pass prints nine lines of nine characters. For line `i` and character `j` (both starting at zero), it reads index `(i + 8 + j) % 9`.
- The backward pass prints another nine lines, reading index `8 - ((i + j) % 9)`.
- It prints each character with syscall 11, adds a newline after each line, and exits with syscall 10.

The string is literal program data; it is not read from a user or generated at runtime. The output is intended as an exercise in addressing and loop control, not a general-purpose string-rotation utility.

## Running it

Open `project_0.s` in a MIPS simulator that supports the assembly syntax and syscalls used here, assemble it, and run `main`. Inspect the console for the 18 printed lines. The source includes `li`, `div`/`mfhi`, `lb`, branches, and syscalls 10 and 11.

## Limitations

The owner reports having run the assembly code during the course. No simulator, input/output capture, or automated test harness was available to independently verify this particular program for the documentation update. The program uses a fixed nine-character literal, so it does not accept arbitrary input; simulator-specific syscall and pseudo-instruction behavior should be checked before reuse. `README.txt` is an older link-only file retained as-is.
