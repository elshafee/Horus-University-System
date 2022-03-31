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
    don1();
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
    don();
  }
    else if (content.substring(1) == "7A 89 D2 80")
  {
    Serial.println("Omar Alsaqaan");
    Serial.println("ID: 1181291");
    alarm2();
    don3();
  }
    else if (content.substring(1) == "F9 68 B8 B1")
  {
    Serial.println("Ahmad Samed");
    Serial.println("ID: 1181283");
    alarm2();
    don2();
  }

  else   {
    Serial.println(" Access denied");
    alarm1();
    delay(300);
    absencesc1();
  }
  // Reset the loop if no new card present on the sensor/reader. This saves the entire process when idle.
  //  if ( ! rfid.PICC_IsNewCardPresent())
  //    return;
  //
  //  // Verify if the NUID has been readed
  //  if ( ! rfid.PICC_ReadCardSerial())
  //    return;
  //
  //  Serial.print(F("PICC type: "));
  //  MFRC522::PICC_Type piccType = rfid.PICC_GetType(rfid.uid.sak);
  //  Serial.println(rfid.PICC_GetTypeName(piccType));
  //
  //  // Check is the PICC of Classic MIFARE type
  //  if (piccType != MFRC522::PICC_TYPE_MIFARE_MINI &&
  //      piccType != MFRC522::PICC_TYPE_MIFARE_1K &&
  //      piccType != MFRC522::PICC_TYPE_MIFARE_4K) {
  //    Serial.println(F("Your tag is not of type MIFARE Classic."));
  //    return;
  //  }
  //
  //  if (rfid.uid.uidByte[0] != nuidPICC[0] ||
  //      rfid.uid.uidByte[1] != nuidPICC[1] ||
  //      rfid.uid.uidByte[2] != nuidPICC[2] ||
  //      rfid.uid.uidByte[3] != nuidPICC[3] ) {
  //    Serial.println(F("A new card has been detected."));
  //
  //    // Store NUID into nuidPICC array
  //    for (byte i = 0; i < 4; i++) {
  //      nuidPICC[i] = rfid.uid.uidByte[i];
  //    }
  //
  //    Serial.println(F("The NUID tag is:"));
  //    Serial.print(F("In hex: "));
  //    printHex(rfid.uid.uidByte, rfid.uid.size);
  //    Serial.println();
  //    Serial.print(F("In dec: "));
  //    printDec(rfid.uid.uidByte, rfid.uid.size);
  //    Serial.println();
  //    //    Serial.println(rfid.uid);
  //    if (rfid.uid.uidByte, rfid.uid.size == "6A E1 A4 15")
  //    {
  //      Serial.println("Ahmad Elshafee");
  //      Serial.println("ID: 1181318");
  //      alarm2();
  //      don();
  //      delay(3000);
  //
  //    }
  //
  //    else   {
  //      Serial.println(" Access denied");
  //      alarm1();
  //      delay(300);
  //      absencesc1();
  //    }
  //  }
  //  else Serial.println(F("Card read previously."));
  //
  //  // Halt PICC
  //  rfid.PICC_HaltA();
  //
  //  // Stop encryption on PCD
  //  rfid.PCD_StopCrypto1();
  //}
  //
  //
  ///**
  //   Helper routine to dump a byte array as hex values to Serial.
  //*/
  //void printHex(byte *buffer, byte bufferSize) {
  //  for (byte i = 0; i < bufferSize; i++) {
  //    Serial.print(buffer[i] < 0x10 ? " 0" : " ");
  //    Serial.print(buffer[i], HEX);
  //  }
  //}
  //
  ///**
  //   Helper routine to dump a byte array as dec values to Serial.
  //*/
  //void printDec(byte *buffer, byte bufferSize) {
  //  for (byte i = 0; i < bufferSize; i++) {
  //    Serial.print(buffer[i] < 0x10 ? " 0" : " ");
  //    Serial.print(buffer[i], DEC);
  //  }
}
