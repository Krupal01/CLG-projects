#include <lpc21xx.h>
#define BUT1PIN         15
#define LED1PIN         8

int main(void)
{        MAMCR = 2;      

        IODIR0 |= (1<<LED1PIN); 
        IOSET0 = (1<<LED1PIN); 
        IODIR0 &= ~((1<<BUT1PIN));

   

        while (1)
        {
                if (IOPIN0 & (1<<BUT1PIN))    { 
                        IOSET0 = (1<<LED1PIN);           
                }
                else {
                        IOCLR0 = (1<<LED1PIN);            
                }
        }
        return 0; 
}