
void ir() {

  distance = sensor.getDistance();

  if (distance < 10 && distance > 0) {
    sanitizsc();
    Serial.println("Solonide is on");
    Serial.println(distance);
    delay(700);
    solenoideon();
    alarm2();
    delay(200);
    solenoideoff();
//    tempsc();
  } else {
    Serial.println("Solonide is off");
  }


}
