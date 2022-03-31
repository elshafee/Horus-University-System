void solenoideon(){
  digitalWrite(solenoid,HIGH);
  alarm1();
  solenoideoff();
  
}
void solenoideoff(){
  digitalWrite(solenoid,LOW);
}
