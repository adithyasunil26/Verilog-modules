# Pipelined process with ALU

## Pipeline stages
- Input: Register addresses (rs1,rs2 and rd), ALU function (func) and a memory address (addr)
- Stage 1: read from registers rs1 and rs2 and store in A and B
- Stage 2: perform ALU operation and store in Z
- Stage 3: write z into register rd
- Stage 4: write z into memeory location addr

## ALU function
  0000: ADD
  0001: SUB
  0010: MUL
  0011: SELA
  0100: SELB
  0101: AND
  0110: OR
  0111: XOR
  1000: NEGA
  1001: NEGB
  1010: SRA
  1011: SLA

## Clocking
A non-overlapping two-phase clock is used for the consecutive pipeline stages.
