Total Hours Spent: 1.5/1.5
		   Actual/Expect

4357 Embedded Firmware Essentials
- Program Assignment #2

1. Login to mbed web site, export the "Hello World" program to all of the following targets. 
   How many text files and how many lines of text code in the exported offline code package?  
   How many binary (library or object) files? 
   How many files are different between (a) and (b)? (Use linux commands: find, wc, diff) (10 points)
   What is the "Entry point address:" of your program?  (hint: using readelf)
   
   a.	Exporting to uVision 
   b.	Exporting to GCC ARM Embedded 

   Note: Right Click your program, then select "export ..."

ANS: 
uVision :
Number of files under Helloworld/
 1. Main cpp file 
 2. uvision Project file
 3. project options file
 4. mbed.bld build file.
Number of header files under Helloworld/mbed directory : 46
Number of header files under HelloWorld/mbed/LPC1768/ARM:7
Number of object (.o extension) file under HelloWorld/mbed/LPC1768/ARM: 5
Number of library (.ar) file under HelloWorld/mbed/LPC1768/ARM = 2
Number of linker scatter file (.sct ) HelloWorld/mbed/LPC1768/ARM = 1


GCC ARM Embedded:
Number of files under Helloworld/
 1. Main cpp file 
 2. Makefile 
 3. mbed.bld build file.
Number of header files under HelloWorld/mbed : 46
Number of header files under HelloWorld/mbed/LPC1768/GCC_ARM : 7
Number of object (.o extension) file under HelloWorld/mbed/LPC1768/GCC_ARM :4
Number of library (.a) file under HelloWorld/mbed/LPC1768/GCC_ARM = 2
Number of linker script file (.ld ) HelloWorld/mbed/LPC1768/GCC_ARM = 1

Difference : 

Difference in Make
No difference in header files under  HelloWorld/mbed

No difference in header files under HelloWorld/mbed/LPC1768/ARM and HelloWorld/mbed/LPC1768/GCC_ARM

Binary files cmsis_nvic.o core_cm3.o startup_LPC17xx.o system_LPC17xx.o  differ


Files only in uvision:
 capi.ar
 LPC1768.sct
 mbed.ar
 sys.o



Files only in gcc ARM:
libcapi.a
 libmbed.a
 LPC1768.ld


Entry point address in GCC ARM using readelf command 
 command:  readelf -all HelloWorld.elf
 Class:                             ELF32
  Data:                              2's complement, little endian
  Version:                           1 (current)
  OS/ABI:                            UNIX - System V
  ABI Version:                       0
  Type:                              EXEC (Executable file)
  Machine:                           ARM
  Version:                           0x1
  Entry point address:               0x1f5
  Start of program headers:          52 (bytes into file)
  Start of section headers:          81084 (bytes into file)
  Flags:                             0x5000002, has entry point, Version5 EABI
  Size of this header:               52 (bytes)
  Size of program headers:           32 (bytes)
  Number of program headers:         3
  Size of section headers:           40 (bytes)
  Number of section headers:         21
  Section header string table index: 18



2. binwalk, objdump, nm to Analysis binaries files
   http://binwalk.org/

command : binwalk HelloWorld.elf

DECIMAL   	HEX       	DESCRIPTION
-------------------------------------------------------------------------------------------------------
0         	0x0       	ELF 32-bit LSB executable, ARM, version 1 (SYSV)
33055     	0x811F    	LZMA compressed data, properties: 0xBF, dictionary size: 524288 bytes, uncompressed size: 268468224 bytes
81124     	0x13CE4   	LZMA compressed data, properties: 0x1B, dictionary size: 16777216 bytes, uncompressed size: 100663296 bytes
81404     	0x13DFC   	LZMA compressed data, properties: 0x5A, dictionary size: 16777216 bytes, uncompressed size: 805306368 bytes
88583     	0x15A07   	mcrypt 2.2 encrypted data, algorithm: blowfish-448, mode: CBC, keymode: SHA-1 hash

binwalk HelloWorld.bin
DECIMAL   	HEX       	DESCRIPTION
-------------------------------------------------------------------------------------------------------
287       	0x11F     	LZMA compressed data, properties: 0xBF, dictionary size: 524288 bytes, uncompressed size: 268468224 bytes

3. Optional: git clone https://github.com/mbedmicro/mbed
   
