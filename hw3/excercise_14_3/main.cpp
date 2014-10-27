void delay(void);

#define FIO1DIR2   (*(volatile unsigned char *) (0x2009c022))
#define FIO1PIN2   (*(volatile unsigned char *) (0x2009c036))


int main() {
    // set direction of port 1 byte 2 to output.
    FIO1DIR2 = 0xFF;
    while(1) {
        // Switch on and switch off on chip LED 1.
        FIO1PIN2 |= 0x04;
        delay();
        FIO1PIN2 &= ~0x04;
        delay();
        // switch on and switch off on chip LED 2.
        FIO1PIN2 |= 0x10;
        delay();
        FIO1PIN2 &= ~0x10;
        delay();
        // switch on and switch off on chip LED 3.
         FIO1PIN2 |= 0x20;
        delay();
        FIO1PIN2 &= ~0x20;
        delay();
        // switch on and switch off on chip LED 4.
        FIO1PIN2 |= 0x80;
        delay();
        FIO1PIN2 &= ~0x80;
        delay();
    }    

}

void delay(void) {
     
    int j;
    for(j=0;j<10000000;j++) {
      j++;
      j--;
    }
}    
