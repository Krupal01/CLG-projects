#include <lpc21xx.h>
///////////////////////////////////////////
void delay(unsigned int count)
{
	unsigned int i;
	while(count>0)
	{ 
			for(i=0;i<64000;i++); 
			count--;
	}
}
////////////////////////////////////////////
int main (void)
	{
	unsigned int j=0x000000FF;
	IODIR1 = 0x000000FF;	
		while (1)
		{
		IOSET1 = j; 
		delay(50);
		IOCLR1 = j; 
		delay(50); 
		}
}
