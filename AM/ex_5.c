#include<lpc21xx.h>
void delay(unsigned int count)
{
	unsigned int i;
	while(count>0)
		{
			for(i=0;i<64000;i++);
			count--;
		}
}
int main (void)
{
	unsigned int j = 0x00FF0000;
	IODIR0 = 0x00FF0000;
	while(1)
		{
			IOSET0 = j;
			delay(500);
			IOCLR0 = j;
			delay(500);
		}
}
