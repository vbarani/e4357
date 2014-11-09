#include "mbed.h"
Ethernet eth;
Serial pc(USBTX,USBRX);
char buf[0xFF];

int main() {
    pc.printf("Ethernet data read and display \n\n");
    
    while(1) {
        int size = eth.receive();
        if(size >0){
            eth.read(buf,size);
            pc.printf("size = %0d data = ",size);
            for(int i =0;i<size; i++) {
              pc.printf("%02X ",buf[i]);   
            }
            pc.printf("\n\r");      
         }    
    }
}
