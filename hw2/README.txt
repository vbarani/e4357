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
No difference in header files under  HelloWorld/mbed.


2. binwalk, objdump, nm to Analysis binaries files
   http://binwalk.org/

3. Optional: git clone https://github.com/mbedmicro/mbed
   
