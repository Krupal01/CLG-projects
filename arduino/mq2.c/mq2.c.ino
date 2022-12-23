#include <MQ2.h>
#include <LiquidCrystal.h>
LiquidCrystal lcd(12,11,5,4,3,2);

int pin = A0;
int lpg, co, smoke;
MQ2 mq2(pin);
void setup(){
  lcd.begin(16,2);
  Serial.begin(9600);
  mq2.begin();
}
void loop(){
lcd.setCursor(0,0);
float* values= mq2.read(true); //set it false if you don't want to print the
lpg = mq2.readLPG();
lcd.print(lpg);
co = mq2.readCO();
lcd.print("co");

//smoke = values[2];
smoke = mq2.readSmoke();
lcd.print("smoke");
delay(1000);
}
