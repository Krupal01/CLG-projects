#include <LPC213X.H>
void delay(unsigned int count)
	{
		unsigned int i;
		while(count>0)
	{
		for (i=0;i<64000;i++);
		count--;
	}
}

int main (void)
{
	unsigned int j;
	IODIR0 = 0x000000FF;
while(1){
	for (j = 0x00000001;j<=0x00000008;j<<=1)
	{
			IOSET0 = j;
			delay (50);
			IOCLR0 = j;
			delay(50);
	}
}

}
