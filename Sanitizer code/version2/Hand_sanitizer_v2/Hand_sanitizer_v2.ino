// ir sensor variables
#include <SharpIR.h>
SharpIR sensor( SharpIR::GP2Y0A41SK0F, A0 );
int distance = 0;

//tft screen

int number = 0;
// mlx90614
#include <Wire.h>
//#include <Adafruit_MLX90614.h>

//Adafruit_MLX90614 mlx = Adafruit_MLX90614();



#include <SPI.h>
#include <MFRC522.h>

#define SS_PIN 53
#define RST_PIN 5

MFRC522 rfid(SS_PIN, RST_PIN); // Instance of the class

MFRC522::MIFARE_Key key;

byte nuidPICC[4];

//solenoid valve
#define solenoid 12

// oximeter
#include "MAX30105.h"
#include "spo2_algorithm.h"
MAX30105 particleSensor;
#if defined(__AVR_ATmega328P__) || defined(__AVR_ATmega168__)
uint16_t irBuffer[100]; //infrared LED sensor data
uint16_t redBuffer[100];  //red LED sensor data
#else
uint32_t irBuffer[100]; //infrared LED sensor data
uint32_t redBuffer[100];  //red LED sensor data
#endif

int32_t bufferLength; //data length
int32_t spo2; //SPO2 value
int8_t validSPO2; //indicator to show if the SPO2 calculation is valid
int32_t heartRate; //heart rate value
int8_t validHeartRate; //indicator to show if the heart rate calculation is valid

byte pulseLED = 11; //Must be on PWM pin
byte readLED = 13; //Blinks with each data read

const int buzzer = 9;
extern uint8_t SmallFont[];
extern uint8_t BigFont[];

void setup() {
  Serial.begin(9600);

  SPI.begin(); // Init SPI bus
  rfid.PCD_Init(); // Init MFRC522

  for (byte i = 0; i < 6; i++) {
    key.keyByte[i] = 0xFF;
  }

  Serial.println("Adafruit MLX90614 test");

//  if (!mlx.begin()) {
//    Serial.println("Error connecting to MLX sensor. Check wiring.");
//    while (1);
//  };

//  Serial.print("Emissivity = "); Serial.println(mlx.readEmissivity());
  Serial.println("================================================");


  // define solenoid pin
  pinMode(solenoid, OUTPUT);
  digitalWrite(solenoid, LOW);
  pinMode(buzzer, OUTPUT);
  alarm3();

}


void loop() {
  //  alarm1();
  //    delay(2500);
  //
  //  alarm3();
  //    delay(2500);
  //
  //  alarm2();
  //  opening();
  delay(2500);
  nfc();
  ir();
  temp();


}
