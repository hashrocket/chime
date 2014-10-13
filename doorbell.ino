int power = power;

void setup()
{
  Serial.begin(9600);
  pinMode(power, OUTPUT);
  digitalWrite(power, HIGH);
}

void loop()
{
  unsigned char message;
  if (Serial.available() > 0) {
    delay(10);
    message = Serial.read();
    if(message == '1')
      digitalWrite(power, LOW);
    else if (message == '0')
      digitalWrite(power, HIGH);
  }
}
