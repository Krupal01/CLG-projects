#include <LPC22xx.h>
#define RS 10
#define EN 11
#define LCDDATA 2
unsigned char msg[]="GEC RAJKOT" ;

void IOSET(unsigned int pin)
{
IOSET0=1<<pin;
}
void IOCLR(unsigned int pin)
{
IOCLR0=1<<pin;
}
void Write_Byte(unsigned char data)
{
unsigned char i;
for(i=0;i<8;i++)
{
if(data&1) {IOSET(i+LCDDATA);}
else {IOCLR(i+LCDDATA);}
data=data>>1;
}
}

void delayms (unsigned int i) {
unsigned int n;
while(i>1)
{
for(n=65535;n>1;n--);
i--;
}
}
void LcdWrite_CMD( unsigned int CMD) {
IOCLR(RS);
delayms(1);
Write_Byte(CMD);
delayms(1);
IOSET(EN);
delayms(1);
IOCLR(EN);
delayms(2);
}
void LCDWrite_Data( unsigned int dataW ) {
IOSET(RS);
delayms(1);
Write_Byte(dataW);
delayms(1);
IOSET(EN);
delayms(1);
IOCLR(EN);
delayms(2);
}
void LCDMessage(unsigned char* msg)
{
unsigned int i=0;
while(msg[i]!=0)
{
LCDWrite_Data(msg[i]);
i++;
}
}
int main(void)
{ IODIR0=0x0000FFFF;
delayms(1);
LcdWrite_CMD( 0x38);
LcdWrite_CMD( 0x08);
LcdWrite_CMD( 0x01);
LcdWrite_CMD( 0x06);
LcdWrite_CMD( 0x0c);
delayms(1);
LcdWrite_CMD( 0x80);
LCDMessage(msg);
while(1);
}
