# Smart-clock-thermometer-hygrometer
[***Download full project (contains PCB folder, README instruction file, code and gallery)***](https://github.com/hientv1999/Smart-clock-thermometer-hygrometer/archive/main.zip)  
## Table of Contents  
[The motivation](#the-motivation)  
[Description](#description)  
[Required components](#required-components)  
[Procedure](#procedure)  
[ 1. Hardware connections](#hardware-connections)  
[ 2. Programming](#programming)  
[Gallery](#gallery)  
[ 1. Hardware Hookup](#hardware-hookup)  
[ 2. Enclosure Assembly](#enclosure-assembly)  
[ 3. Behaviours](#behaviours)  
[ 4. Final Product](#final-product)  


## The motivation
This is my very first personal electronic project. I started my electronic hobby with the Arduino Uno R3. One of the most common projects that regular beginners usually start with this microcontroller are: 
1. Displaying characters with *LCD1602 Module*
2. Monitoring temperature and humidity with *DHT11 Temperature and Humidity Module*
3. Motion sensing with *HC-SR501 PIR Motion Sensor Module*
4. Time display with *DS1307 RTC Module* and *4 Digit 7-Segment Display*
5. Sound activation with *KY-037 Sound Detection Sensor*

However, I wanted to make a special project that outclassed the above ones. Also, the projects must not use other modules other than the 6 mentioned modules above since I only have those in hands at that moment. Also, I desired to exploit the capability of the Arduino Uno R3 microcontroller as much as I can. Therefore, I came up with this project to fully utilize the entire I/O pins of Arduino Uno R3 microcontroller and all modules I have.
## Description
The final project (under default) will be a device that can:
* Switch between the *LCD1602 Module* and *4 Digit 7-Segment Display* to show the information based on the presence of the user.
* Under default, the device will display the time under 24-hour format via the *4 Digit 7-Segment Display* for easier visibility.
* If the user stays closer than 3 meters from the device, the device will switch to the *LCD1602 Module* to display time for 10 seconds and then, temperature and humidity readings for 10 seconds.
* *LCD1602 Module* will be turned off after 10 seconds to save power.
* *LCD1602 Module* can always be activated by motion within 3 meters or hand clap.
* Single clap for showing Time reading only for 10 seconds.
* Double clap for showing temperature and humidity readings only for 10 seconds.

***Bonus: RGB LEDs will be added to make device's look more attractive***
## Required components
| Devices | Number |
| :-----: | :----: | 
| Arduino Uno R3 microcontroller | 1 | 
| 4 Digit 7-Segment Display | 1 |
| LCD1602 Module | 1 |
| DS1307 RTC Module | 1 |
| DHT11 Temperature and Humidity Module | 1 |
|HC-SR501 PIR Motion| 1 |
| Ky-037 Sound Detection Sensor | 1 |
| Red LED | 1 |
| Green LED | 1 |
| Blue LED | 1 |
| Yellow LED | 1 |
| 100 Ω resistor | 2 |
| 220 Ω resistor | 3 |
| 1 kΩ resistor | 5 |
| 2 kΩ resistor | 1 |
| 830 Tie-Points Breadboard | 1 |
| USB cable or Power cable | 1 |
| Plastic/Cardboard box | 1 |
| Female-to-Male Dupont Wire | 20 |
| Breadboard Jumper Wire | ~60 |
## Procedure
### Hardware connections

I'm using KiCad to make the schematic for this project. You can either print it onto a PCB or wire everything on the breadboard.

[Access KiCad folder](https://github.com/hientv1999/Smart-clock-thermometer-hygrometer/blob/main/PCB)

![Schematic](https://github.com/hientv1999/Smart-clock-thermometer-hygrometer/blob/main/Schematic.PNG)
### Programming

In this project, I use Arduino IDE for beginner's convenience. It is a free software and most tinkering beginner will be familiar with.

You may wish to install some libraries: 
* [IRRemote.h](https://downloads.arduino.cc/libraries/github.com/z3t0/IRremote-2.8.1.zip)
* [dht.h](https://downloads.arduino.cc/libraries/github.com/adafruit/DHT_sensor_library-1.4.1.zip)
* [LiquidCrystal.h](https://downloads.arduino.cc/libraries/github.com/arduino-libraries/LiquidCrystal-1.0.7.zip)
* [RTClib.h](https://downloads.arduino.cc/libraries/github.com/adafruit/RTClib-1.12.4.zip)
* [SevSeg.h](https://downloads.arduino.cc/libraries/github.com/DeanIsMe/SevSeg-3.5.0.zip)  

Click on the name of the library in blue color to download it. After downloading, in your Arduino IDE, go to Sketch -> Include Library -> Add .ZIP Library. Then browse and select the library you just downloaded.

[View and code file here](https://github.com/hientv1999/Smart-clock-thermometer-hygrometer/blob/main/Smart-clock-thermometer-hygrometer.ino)

***The RTC timer of the device will be set based on the timer of the computer you used to upload the code onto Arduino board.***

***Loudness and time betwwen claps can be customized in the code.***
## Gallery
### Hardware Hookup
  <img width="336" height="448" src="https://github.com/hientv1999/Smart-clock-thermometer-hygrometer/blob/main/File_000.jpeg">
***I put a motor and fan for cooling purpose but it turns out to be very loud and unneccessary***

### Enclosure Assembly
  <img width="336" height="448" src="https://github.com/hientv1999/Smart-clock-thermometer-hygrometer/blob/main/File_003.jpeg">


### Behaviours
<img align = "left" width="336" height="448" src="https://github.com/hientv1999/Smart-clock-thermometer-hygrometer/blob/main/File_001.jpeg"> <img alignt = "right" width="336" height="448" src="https://github.com/hientv1999/Smart-clock-thermometer-hygrometer/blob/main/File_002.jpeg">

### Final Product 
![Final product](https://github.com/hientv1999/Smart-clock-thermometer-hygrometer/blob/main/Video.gif)
