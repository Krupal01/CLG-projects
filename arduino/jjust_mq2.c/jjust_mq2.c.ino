#include <MQ2.h>


int pin = A0;
int lpg, co, smoke;
MQ2 mq2(pin);
void setup(){
 
  Serial.begin(9600);
  mq2.begin();
}
void loop(){

float* values= mq2.read(true); //set it false if you don't want to print the
lpg = mq2.readLPG();
Serial.print(lpg);
co = mq2.readCO();
Serial.print(co);
smoke = mq2.readSmoke();
Serial.print(smoke);
delay(1000);
}
