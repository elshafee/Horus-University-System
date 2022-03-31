void nfc() {

  // Look for new cards
  if ( ! rfid.PICC_IsNewCardPresent())
  {
    //    Serial.println("Ahmad Elshafee");
    return;
  }
  // Select one of the cards
  if ( ! rfid.PICC_ReadCardSerial())
  {
    return;
  }
  //Show UID on serial monitor
  Serial.print("UID tag :");
  String content = "";
  byte letter;
  for (byte i = 0; i < rfid.uid.size; i++)
  {
    Serial.print(rfid.uid.uidByte[i] < 0x10 ? " 0" : " ");
    Serial.print(rfid.uid.uidByte[i], HEX);
    content.concat(String(rfid.uid.uidByte[i] < 0x10 ? " 0" : " "));
    content.concat(String(rfid.uid.uidByte[i], HEX));
  }
  Serial.println();
  Serial.print("Name : ");
  content.toUpperCase();
  if (content.substring(1) == "6A E1 A4 15")
  {
    Serial.println("Zeyad ali Nabhan");
    Serial.println("ID: 1181011");
    alarm2();
    delay(3000);
    //89 2D C9 B2 => Elshafee
    //6A E1 A4 15 => Zeyad
    //F9 68 B8 B1 => sameh
    //7A 89 D2 80 => omar

  }
  else if (content.substring(1) == "89 2D C9 B2")
  {
    Serial.println("Ahmad Elshafee");
    Serial.println("ID: 1181318");
    alarm2();
  }
  else if (content.substring(1) == "7A 89 D2 80")
  {
    Serial.println("Omar Alsaqaan");
    Serial.println("ID: 1181291");
    alarm2();
  }
  else if (content.substring(1) == "F9 68 B8 B1")
  {
    Serial.println("Ahmad Samed");
    Serial.println("ID: 1181283");
    alarm2();
  }

  else   {
    Serial.println(" Access denied");
    alarm1();
    delay(300);
  }
}
