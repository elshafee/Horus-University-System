#include <WiFi.h>
#include <FirebaseESP32.h>
#include <SoftwareSerial.h>

#include <TinyGPS++.h>
float lat , lon ; // create variable for latitude and longitude object

TinyGPSPlus gps;
SoftwareSerial ss(19, 18);



#define FIREBASE_HOST "https://horus-univ-default-rtdb.firebaseio.com/"
#define FIREBASE_AUTH "oAo2mFUlS2NCuYJB7wlutMD3eM8aD0lZSxWQXpFO"
#define WIFI_SSID "Elshafee"
#define WIFI_PASSWORD "ahmad123*"


//Define FirebaseESP32 data object
FirebaseData firebaseData;
FirebaseJson json;
int Vresistor = A0;
int Vrdata = 0;

const int ledPin = 2;

void setup()
{
  pinMode (ledPin, OUTPUT);

  ss.begin(9600);

  Serial.begin(115200);

  pinMode(Vresistor, INPUT);


  WiFi.begin(WIFI_SSID, WIFI_PASSWORD);
  Serial.print("Connecting to Wi-Fi");
  while (WiFi.status() != WL_CONNECTED)
  {
    digitalWrite (ledPin, HIGH);

    delay(500);

    digitalWrite (ledPin, LOW);

    delay(500);

    Serial.print(".");
    delay(300);
  }
  Serial.println();
  Serial.print("Connected with IP: ");
  Serial.println(WiFi.localIP());
  Serial.println();

  Firebase.begin(FIREBASE_HOST, FIREBASE_AUTH);
  Firebase.reconnectWiFi(true);

  //Set database read timeout to 1 minute (max 15 minutes)
  Firebase.setReadTimeout(firebaseData, 1000 * 60);
  //tiny, small, medium, large and unlimited.
  //Size and its write timeout e.g. tiny (1s), small (10s), medium (30s) and large (60s).
  Firebase.setwriteSizeLimit(firebaseData, "tiny");

  /*
    This option allows get and delete functions (PUT and DELETE HTTP requests) works for device connected behind the
    Firewall that allows only GET and POST requests.

    Firebase.enableClassicRequest(firebaseData, true);
  */
  Serial.println("------------------------------------");
  Serial.println("Connected...");
  for (int i = 0; i < 10; i++) {
    digitalWrite (ledPin, HIGH);
    delay(50);
    digitalWrite (ledPin, LOW);
    delay(50);
  }


}

void loop()
{

  while (ss.available() > 0) {
    gps.encode(ss.read());
    if (gps.location.isUpdated()) {
      Serial.print("Latitude= ");
      Serial.print(gps.location.lat(), 6);
      Serial.print(" Longitude= ");
      Serial.println(gps.location.lng(), 6);
      json.set("/lon", gps.location.lng());
      json.set("/lat", gps.location.lat());
      json.set("/speed", gps.speed.kmph());

      Serial.println(gps.speed.kmph());
      Serial.println(gps.altitude.meters());
      Serial.println(gps.location.rawLng().deg); // Raw longitude in whole degrees

      digitalWrite (ledPin, HIGH);
      delay(20);
      digitalWrite (ledPin, LOW);
    }
    Serial.println(gps.speed.kmph());


  }
  Firebase.updateNode(firebaseData, "/location", json);

}
