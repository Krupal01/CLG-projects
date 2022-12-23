const int right = 10;
const int left = 9;


void setup() {
  pinMode(right, OUTPUT);
  pinMode(left, OUTPUT);


}

void loop() {
  digitalWrite(right, HIGH);
  delay(500);
  digitalWrite(left, HIGH);
  delay(500);

}
