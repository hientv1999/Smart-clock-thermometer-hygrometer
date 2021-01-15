# Smart-clock-thermometer-hygrometer
## The motivation
This is my very first personal electronic project. I started my electronic hobby with the Arduino Uno R3. One of the most common projects that regular beginners usually start with this microcontroller are: 
1. Displaying characters with *LCD1602 Module*
2. Monitoring temperature and humidity with *DHT11 Temperature and Humidity Module*
3. Motion sensing with *HC-SR501 PIR Motion Sensor Module*
4. Time display with *DS1307 RTC Module* and *4 Digit 7-Segment Display*
5. Sound activation with *KY-037 Sound Detection Sensor*

However, I wanted to make a special project that outclassed the above ones. Also, the projects must not use other modules other than the 6 mentioned modules above since I only have those in hands at that moment. Also, I desired to exploit the capability of the Arduino Uno R3 microcontroller as much as I can. Therefore, I came up with this project to fully utilize the entire I/O pins of Arduino Uno R3 microcontroller and all modules I have.
## Description
The final project will be a device that can:
* Switch between the *LCD1602 Module* and *4 Digit 7-Segment Display* to show the information based on the presence of the user.
* If the user stands more than 3 meters away from the device, it will display the time via the *4 Digit 7-Segment Display* for easier visibility.
* If the user stays closer than 3 meters from the device, the device will switch to the *LCD1602 Module* to display time and also, temperature and humidity readings.
* Displays will be turned off after 10 seconds to save power
* Displays can be activated again by hand-waving or hand clap.

***Bonus: RGB LEDs will be added to make it look more attractive***
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
| USB cable | 1 |
