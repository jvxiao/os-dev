# os-dev

## Test

### compiler code and debug it

```bash
cd test/data
make

# debugger
gdb ./data

# in debuger

layout asm            # show asemblly code 

break _start          # set a breakpoint at the begining of program

run                   # load program and run

stepi                 # run code by on step

info register  eax    # show content in register eax

info register  ebx    # show content in register ebx

x/x  $ebx             # show the value at the address which lay in register ebx

``