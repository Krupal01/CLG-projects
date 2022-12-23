#include<lpc21xx.h>
#define switch 31
#define led 20

int main()
{
	unsigned int switchStatus;
	PINSEL2 = 0x000000;
	IODIR1 = ((1<<led)|(0<<switch));
	while(1)
	{
		switchStatus = (IOPIN1>>switch) & 0x01;
		
		if(switchStatus == 1)
			{
				IOSET1 = (1<<led);
			}
		else
			{
				IOCLR1 = (0<<led);
			}
	}
}