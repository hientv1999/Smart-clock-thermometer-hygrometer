#include <IRremote.h> 
#include <dht.h> //temperature measure
#include <LiquidCrystal.h>
#include <Wire.h> //for RTC
#include <RTClib.h> //TimeClock
#include <SevSeg.h>

const int RECV_PIN = A4;
IRrecv irrecv(RECV_PIN);
decode_results results;
unsigned long key_value = 0;

dht DHT;
#define DHT11_PIN A2

LiquidCrystal lcd(12, 11,6 , 5, 4, 3);
int backLight = A3;

RTC_DS1307 rtc;
char daysOfTheWeek[7][12] = {"Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"};

SevSeg sevseg; 

unsigned long current;
unsigned long current_IR;

int soundThreshold = 529; //customize this number depending on how loud the sound would be to activate the displays
int intervalClap = 500; //customize this number depending on how long between 2 claps would be to activate the display
void setup(){
  Serial.begin(9600);
  pinMode(A0, INPUT); // sound sensor
  pinMode(A1, INPUT); //motion sensor 
  Wire.begin();
  rtc.begin();
  DateTime now = rtc.now();
	/*Adjust the value 6 below if needed.
	It is the number of second your computer need from the moment you click compile & upload or upload to the moment your Arduino starts working.
	Once you uploaded the code successfully the first time, comment the 3 below lines of code by adding // at the beginning of each line to disable them then upload the program the second time*/
  rtc.adjust(DateTime(__DATE__, __TIME__));
  DateTime t = DateTime(rtc.now().unixtime()+6);
  rtc.adjust(t);
}

void Time(unsigned long current){
  DateTime now = rtc.now();
  lcd.setCursor(1,0); 
  lcd.print(daysOfTheWeek[now.dayOfTheWeek()]);
  lcd.print(",");
  if (now.day() < 10 ) {
    lcd.print("0");
  }
  lcd.print(now.day(), DEC);
  lcd.print("/");
  if (now.month() < 10 ) {
    lcd.print("0");
  }
  lcd.print(now.month(), DEC);
  lcd.print("/");
  lcd.print(now.year(), DEC);
  lcd.setCursor(4,1);
  if (now.hour() <10){
    lcd.print("0");
  }
  lcd.print(now.hour(), DEC);
  lcd.print(":");
  if (now.minute() < 10) {
    lcd.print("0");
  }
  lcd.print(now.minute(), DEC);
  lcd.print(":");
  if (now.second() < 10 ) {
    lcd.print("0");
  }
  lcd.print(now.second(), DEC);
  if ((unsigned long) (millis() - current) >= 10000){
    digitalWrite(backLight, LOW);
   }
   delay(1000);                                                               //setting ban ngay less sound sensitive ban dem more sound sensitive 
}

void TempHumid(unsigned long current){
  int chk = DHT.read11(DHT11_PIN);
  lcd.setCursor(0,0);
  lcd.print("Temp: ");
  lcd.print(DHT.temperature);
  lcd.print((char)223);
  lcd.print("C");
  lcd.setCursor(0,1);
  lcd.print("Humidity: ");
  lcd.print(DHT.humidity);
  lcd.print("%");
  if ((unsigned long) (millis() - current) >= 10000){
    	digitalWrite(backLight, LOW);
  }
  delay(2000); 
}
void loop()
{
    Serial.println(analogRead(A0));
    if (digitalRead(A1) ==LOW){
  	    int clap =0;
  	    if (analogRead(A0) <= soundThreshold + 1) {
  		    digitalWrite(backLight, LOW);
  		    byte numDigits = 4;
  		    sevseg.Begin(COMMON_CATHODE, numDigits, 2, 8, 9, 10, 11, 6, 5, 4, 3, 12, 7, 13);
  		    sevseg.SetBrightness(100);
  		    char timeString[0];
  		    DateTime now = rtc.now();
  		    int hour_minute = now.hour()*100+now.minute();
  		    sprintf(timeString, "%4d", hour_minute);
  		    sevseg.DisplayString(timeString, 2);
  		    delay(5);
  	    } else if (analogRead(A0) > soundThreshold) {
  		    lcd.begin(16, 2);
  		    pinMode(backLight, OUTPUT);
  		    digitalWrite(backLight, HIGH);
  		    int volume = analogRead(A0);
  		    Serial.println(volume, DEC);
    		    current = millis();
    		    digitalWrite(backLight, HIGH);
    		    lcd.clear();
    		    delay(200);
    		    while ((unsigned long) (millis() - current ) <=intervalClap ) {
      			    if (analogRead(A0) > soundThreshold + 1 ){
         		    clap =1;
    		        }
  	            }
  	        if (clap ==0) {                     //clap once
      		    for (int i =0; i<10; i++ ) {
          		    lcd.clear();
      	  		    Time(current);
      		    }
  	        } else {                             //clap twice
      		    for (int i=0; i<5;  i++) {
        		    lcd.clear();
        		    TempHumid(current);
    		    }
  	        }
  	        digitalWrite(backLight, LOW);
  	    }
    } else {
    	lcd.begin(16, 2);
    	pinMode(backLight, OUTPUT);
    	digitalWrite(backLight, HIGH);
    	current = millis();
      	for (int i =0; i<6; i++ ) {
        	lcd.clear();
        	Time(current);
      	}
      	for (int i=0; i<2; i++ ) {
        	lcd.clear();
        	TempHumid(current);
      	}    
    	digitalWrite(backLight,LOW);
    	byte numDigits = 4;
    	sevseg.Begin(COMMON_CATHODE, numDigits, 2, 8, 9, 10, 11, 6, 5, 4, 3, 12, 7, 13);
    	sevseg.SetBrightness(100);
    	char timeString[0];
    	DateTime now = rtc.now();
    	int hour_minute = now.hour()*100+now.minute();
    	sprintf(timeString, "%4d", hour_minute);
    	sevseg.DisplayString(timeString, 2);
    	delay(5);
    }
}
