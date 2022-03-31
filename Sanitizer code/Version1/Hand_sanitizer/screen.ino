void opening() {
  myGLCD.setFont(SmallFont);
  myGLCD.fillScr(49, 172, 247);
  myGLCD.setBackColor(61, 67, 75);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillRoundRect(54, 26.4, 210.34, 109.84);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillRoundRect(54, 117.63, 210.34, 196.62);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillRoundRect(54, 203.29, 210.34, 281.16);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillRoundRect(54, 290.06, 210.34, 367.93);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillRoundRect(54, 375, 210.34, 452.87);
  myGLCD.setColor(61, 67, 75);
  myGLCD.drawLine(265.44, 25.09, 265.44, 457.96);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillRoundRect(320.54, 26.4, 747.74, 453.6);
  myGLCD.setColor(255, 255, 255);
  myGLCD.print("12 : 00 PM", 492, 59);
  myGLCD.print("23 / 7 / 2021", 485, 104);
  myGLCD.print("Lecture Microprocessor ", 448, 203);
  myGLCD.print("E 326", 508, 251);
  myGLCD.print("A.Dr Hatem Khater", 461, 308);
  myGLCD.print("Please move your hand under the device", 363, 377);
  myGLCD.print("to start actions", 461, 397);
  myGLCD.print("Sanitizing", 98, 89.81);
  myGLCD.print("Temperature", 98, 181);
  myGLCD.print("Oxygen Rate", 98, 262);
  myGLCD.print("Herat Rate", 98, 348);
  myGLCD.print("Absence", 109, 433);
  myGLCD.drawBitmap ( 89.9,  26.4, 84, 63, Group_7);
  myGLCD.drawBitmap (86.92, 290.09, 90, 57, Group_1);
  myGLCD.drawBitmap (94.15, 203.21, 75, 59, Group_3);
  myGLCD.drawBitmap (114.98, 118.81, 35, 66, Group_9);
  myGLCD.drawBitmap (90, 375, 82, 59, Group_2);
}
void done() {
  myGLCD.setFont(SmallFont);
  myGLCD.fillScr(49, 172, 247);
  myGLCD.setBackColor(61, 67, 75);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillRoundRect(54, 26.4, 210.34, 109.84);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillRoundRect(54, 117.63, 210.34, 196.62);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillRoundRect(54, 203.29, 210.34, 281.16);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillRoundRect(54, 290.06, 210.34, 367.93);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillRoundRect(54, 375, 210.34, 452.87);
  myGLCD.setColor(61, 67, 75);
  myGLCD.drawLine(265.44, 25.09, 265.44, 457.96);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillRoundRect(320.54, 26.4, 747.74, 453.6);
  myGLCD.setColor(255, 255, 255);
  myGLCD.print("12 : 00 PM", 492, 59);
  myGLCD.print("23 / 7 / 2021", 485, 104);
  myGLCD.print("Lecture Microprocessor ", 448, 203);
  myGLCD.print("E 326", 508, 251);
  myGLCD.print("A.Dr Hatem Khater", 461, 308);
  myGLCD.print("Please move your hand under the device", 363, 377);
  myGLCD.print("to start actions", 461, 397);
  myGLCD.print("Sanitizing", 98, 89.81);
  myGLCD.print("Temperature", 98, 181);
  myGLCD.print("Oxygen Rate", 98, 262);
  myGLCD.print("Herat Rate", 98, 348);
  myGLCD.print("Absence", 109, 433);
  myGLCD.setFont(SevenSegNumFont);
  myGLCD.setColor(8, 255, 154);
  myGLCD.printNumI(distance, 110, 30);
  myGLCD.setFont(SevenSegNumFont);
  myGLCD.setColor(8, 255, 154);
  myGLCD.printNumI(30, 100, 125);
  myGLCD.drawBitmap ( 89.9,  26.4, 84, 63, Group_7);
  myGLCD.drawBitmap (86.92, 290.09, 90, 57, Group_1);
  myGLCD.drawBitmap (94.15, 203.21, 75, 59, Group_3);
  myGLCD.drawBitmap (114.98, 118.81, 35, 66, Group_9);
  myGLCD.drawBitmap (90, 375, 82, 59, Group_2);
}
void sanitizsc() {
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillRoundRect(320.54, 26.4, 747.74, 453.6);
  myGLCD.setColor(8, 255, 154);
  myGLCD.setFont(BigFont);
  myGLCD.print("Sanitizing", 440, 350);
  myGLCD.setFont(SmallFont);
  myGLCD.drawBitmap ( 470,   190, 84, 63, Group_7);
  myGLCD.print("Sanitizing", 98, 89.81);
  myGLCD.print("Please Put your hand uder the device", 400, 400);
}
void tempsc1() {
  number = mlx.readObjectTempC();
  int seround = mlx.readAmbientTempC();
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillRoundRect(320.54, 26.4, 747.74, 453.6);
  myGLCD.setColor(8, 255, 154);
  myGLCD.fillCircle(531, 240, 100);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillCircle(531, 240, 85);
  myGLCD.setFont(SevenSegNumFont);
  myGLCD.setColor(8, 255, 154);
  myGLCD.printNumI(number, 490, 210);
  myGLCD.printNumI(seround, 628, 76);
  myGLCD.setFont(BigFont);
  myGLCD.print("C", 560, 230);
  myGLCD.print("Temperature", 440, 350);
  myGLCD.print("ambient temperature", 365, 76);
  myGLCD.setFont(SmallFont);
  myGLCD.print("Temperature", 98, 181);
  myGLCD.print("please keep all instructions", 400, 400);
  delay(5000);
  //  heartsc1();
}
void tempsc() {
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillRoundRect(320.54, 26.4, 747.74, 453.6);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillCircle(531, 240, 100);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillCircle(531, 240, 85);
  myGLCD.setFont(SevenSegNumFont);
  myGLCD.setColor(8, 255, 154);
  myGLCD.printNumI(00, 490, 210);
  myGLCD.setFont(BigFont);
  myGLCD.print("C", 560, 230);
  myGLCD.print("Temperature", 440, 350);
  myGLCD.setFont(SmallFont);
  myGLCD.print("Temperature", 98, 181);
  myGLCD.print("Please Keep Your head front to sensor", 400, 400);
  delay(5000);
  tempsc1();
}
void heartsc() {
  myGLCD.setBackColor(61, 67, 75);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillRoundRect(320.54, 26.4, 747.74, 453.6);
  myGLCD.setColor(8, 255, 154);
  myGLCD.fillCircle(531, 240, 100);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillCircle(531, 240, 85);
  myGLCD.setFont(SevenSegNumFont);
  myGLCD.setColor(8, 255, 154);
  myGLCD.printNumI(85, 490, 210);
  myGLCD.setFont(BigFont);
  myGLCD.print("BPM", 560, 230);
  myGLCD.setFont(BigFont);
  myGLCD.print("Heart Rate", 460, 350);
  myGLCD.setFont(SmallFont);
  myGLCD.print("Herat Rate", 98, 348);
  myGLCD.print("Please Keep Your Finger on the sensor", 400, 400);
  delay(5000);
  oxygensc1();

}
void heartsc1() {
  myGLCD.setBackColor(61, 67, 75);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillRoundRect(320.54, 26.4, 747.74, 453.6);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillCircle(531, 240, 100);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillCircle(531, 240, 85);
  myGLCD.setFont(SevenSegNumFont);
  myGLCD.setColor(8, 255, 154);
  myGLCD.printNumI(00, 490, 210);
  myGLCD.setFont(BigFont);
  myGLCD.print("BPM", 560, 230);
  myGLCD.setFont(BigFont);
  myGLCD.print("Heart Rate", 460, 350);
  myGLCD.setFont(SmallFont);
  myGLCD.print("Herat Rate", 98, 348);
  myGLCD.print("Please Keep Your Finger on the sensor", 400, 400);
  delay(5000);
  heartsc();
}
void oxygensc() {
  myGLCD.setBackColor(61, 67, 75);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillRoundRect(320.54, 26.4, 747.74, 453.6);
  myGLCD.setColor(8, 255, 154);
  myGLCD.fillCircle(531, 240, 100);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillCircle(531, 240, 85);
  myGLCD.setFont(SevenSegNumFont);
  myGLCD.setColor(8, 255, 154);
  myGLCD.printNumI(100, 465, 210);
  myGLCD.setFont(BigFont);
  myGLCD.print("%", 560, 230);
  myGLCD.setFont(BigFont);
  myGLCD.print("Oxygen percentage", 410, 360);
  myGLCD.setFont(SmallFont);
  myGLCD.print("Oxygen Rate", 98, 262);
  myGLCD.print("Please Keep Your Finger on the sensor", 400, 400);
  delay(5000);
  oxygensc1();
}
void oxygensc1() {
  myGLCD.setBackColor(61, 67, 75);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillRoundRect(320.54, 26.4, 747.74, 453.6);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillCircle(531, 240, 100);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillCircle(531, 240, 85);
  myGLCD.setFont(SevenSegNumFont);
  myGLCD.setColor(8, 255, 154);
  myGLCD.printNumI(000, 465, 210);
  myGLCD.setFont(BigFont);
  myGLCD.print("%", 560, 230);
  myGLCD.setFont(BigFont);
  myGLCD.print("Oxygen percentage", 410, 360);
  myGLCD.setFont(SmallFont);
  myGLCD.print("Oxygen Rate", 98, 262);
  myGLCD.print("Please Keep Your Finger on the sensor", 400, 400);
  delay(5000);
  absencesc();
}
void absencesc() {
  myGLCD.setBackColor(61, 67, 75);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillRoundRect(320.54, 26.4, 747.74, 453.6);
  myGLCD.setColor(61, 67, 75);
  myGLCD.setFont(SevenSegNumFont);
  myGLCD.setColor(8, 255, 154);
  //  myGLCD.printNumI(1181318, 430, 250);
  myGLCD.setFont(SmallFont);
  myGLCD.print("Absence", 109, 433);
  myGLCD.setFont(BigFont);
  myGLCD.print("ID:", 370, 280);
  myGLCD.print("Absence", 480, 110);
  myGLCD.print("Name:", 365, 180);
  //  myGLCD.print("Ahmad Elshafee", 450, 180);
  //  myGLCD.print("Done", 490, 400);
  delay(5000);
  absencesc1();
}
void absencesc1() {
  myGLCD.setBackColor(61, 67, 75);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillRoundRect(320.54, 26.4, 747.74, 453.6);
  myGLCD.setColor(8, 255, 154);
  myGLCD.setFont(SevenSegNumFont);
  myGLCD.setColor(8, 255, 154);
  myGLCD.printNumI(00000, 430, 250);
  myGLCD.setFont(SmallFont);
  myGLCD.print("Absence", 109, 433);
  myGLCD.setFont(BigFont);
  myGLCD.print("ID:", 370, 280);
  myGLCD.print("Absence", 480, 110);
  myGLCD.print("Name:", 365, 180);
  myGLCD.print("Access denied", 450, 180);
  myGLCD.print("Erorr", 490, 400);
}
void don() {
  myGLCD.setBackColor(61, 67, 75);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillRoundRect(320.54, 26.4, 747.74, 453.6);
  myGLCD.setColor(8, 255, 154);
  myGLCD.setFont(SevenSegNumFont);
  myGLCD.setColor(8, 255, 154);
  myGLCD.printNumI(1181318, 430, 250);
  myGLCD.setFont(BigFont);
  myGLCD.print("ID:", 370, 280);
  myGLCD.print("Absence", 480, 110);
  myGLCD.print("Name:", 365, 180);
  myGLCD.print("Ahmad Elshafee", 450, 180);
  myGLCD.print("Done", 490, 400);
}

void don1() {
  myGLCD.setBackColor(61, 67, 75);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillRoundRect(320.54, 26.4, 747.74, 453.6);
  myGLCD.setColor(8, 255, 154);
  myGLCD.setFont(SevenSegNumFont);
  myGLCD.setColor(8, 255, 154);
  myGLCD.printNumI(1181011, 430, 250);
  myGLCD.setFont(BigFont);
  myGLCD.print("ID:", 370, 280);
  myGLCD.print("Absence", 480, 110);
  myGLCD.print("Name:", 365, 180);
  myGLCD.print("Zeyad Ali Nabhan", 450, 180);
  myGLCD.print("Done", 490, 400);
}

void don2() {
  myGLCD.setBackColor(61, 67, 75);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillRoundRect(320.54, 26.4, 747.74, 453.6);
  myGLCD.setColor(8, 255, 154);
  myGLCD.setFont(SevenSegNumFont);
  myGLCD.setColor(8, 255, 154);
  myGLCD.printNumI(118128, 430, 250);
  myGLCD.setFont(BigFont);
  myGLCD.print("ID:", 370, 280);
  myGLCD.print("Absence", 480, 110);
  myGLCD.print("Name:", 365, 180);
  myGLCD.print("Ahmad Sameh Khalifa", 440, 180);
  myGLCD.print("Done", 490, 400);
}

void don3() {
  myGLCD.setBackColor(61, 67, 75);
  myGLCD.setColor(61, 67, 75);
  myGLCD.fillRoundRect(320.54, 26.4, 747.74, 453.6);
  myGLCD.setColor(8, 255, 154);
  myGLCD.setFont(SevenSegNumFont);
  myGLCD.setColor(8, 255, 154);
  myGLCD.printNumI(1181291, 430, 250);
  myGLCD.setFont(BigFont);
  myGLCD.print("ID:", 370, 280);
  myGLCD.print("Absence", 480, 110);
  myGLCD.print("Name:", 365, 180);
  myGLCD.print("Omar Alsaqaan", 450, 180);
  myGLCD.print("Done", 490, 400);
}
