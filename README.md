# RISC CPU Design

Introduction

RISC (Reduced Instruction Set Computer) is a modern processor design methodology. In this project, we will design a simple RISC CPU with a 3-bit opcode and a 5-bit operand. This means the CPU will support 8 instruction types and a 32-address memory space.

The processor operates based on clock and reset signals. The program execution stops when the HALT signal is encountered.

#System Components

Program Counter: Stores the program address register.

Address Mux: Selects between program address or instruction address.

Memory: Stores and provides data for the program.

Instruction Register: Handles instruction data.

Accumulator Register: Stores data processed by the ALU.

ALU (Arithmetic Logic Unit): Processes data from Memory, Accumulator, and Instruction opcode.

Each functional block must have a corresponding testbench.

#System Functions

Fetch instructions from Memory.

Decode instructions.

Retrieve operand data from Memory if required.

Execute instructions and perform necessary computations.

Store results back into Memory or the Accumulator.

Repeat the process until the program execution halts.

This project aims to design a fundamental RISC CPU that adheres to the basic principles of reduced instruction set computing while implementing key functional components and testbenches for verification.
