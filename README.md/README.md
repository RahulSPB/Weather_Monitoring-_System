# 🌦️ Weather Monitoring System using OpenWeatherMap API + ThingSpeak + MATLAB Email Alert

## 📌 Overview
This project pulls **real-time weather data** (temperature, humidity, and pressure) using the **OpenWeatherMap API**. The data is uploaded to **ThingSpeak IoT cloud**, and a **MATLAB-based email alert** is triggered if certain weather thresholds (like high temperature or low pressure) are crossed.

This is a **cloud-only project** — no physical sensors are used.

---

## 🧠 Features
- 🌍 Fetches live weather data from OpenWeatherMap API
- ☁️ Sends data to ThingSpeak for graphing and analysis
- 📧 Triggers email alerts using MATLAB cloud when conditions are critical
- 📊 Cloud-based monitoring — accessible anywhere
- 💻 No physical sensors or components required

---

## 🛠️ Tools & Platforms Used
- **ESP32** – Wi-Fi enabled microcontroller for HTTP requests  
- **Arduino IDE** – Firmware development environment  
- **OpenWeatherMap API** – Source of real-time weather data  
- **ThingSpeak** – IoT data logging and visualization platform  
- **MATLAB Cloud** – Email automation using cloud scripts  
- **IFTTT** *(Optional alternative to MATLAB)* – For custom alert automation

---

## 🔧 Flow Diagram (Logical Overview)

            +-------------------------+
            |     ESP32 Board         |
            |-------------------------|
            | - Connects to Wi-Fi     |
            | - Sends HTTP GET        |
            |   request to API        |
            +-----------+-------------+
                        |
                        v
           +-----------------------------+
           |   OpenWeatherMap API        |
           |-----------------------------|
           | - Responds with JSON data   |
           +-------------+---------------+
                         |
                         v
            +--------------------------+
            |    ESP32 (Parse Data)    |
            |--------------------------|
            | - Extract Temp, Humidity |
            |   and Pressure           |
            +-------------+------------+
                          |
                          v
          +------------------------------+
          |   ThingSpeak Cloud Platform  |
          |------------------------------|
          | - Log and graph weather data |
          +-------------+----------------+
                        |
                        v
           +-----------------------------+
           |   MATLAB Cloud Trigger      |
           |-----------------------------|
           | - Read from ThingSpeak      |
           | - Send Email if thresholds  |
           |   exceeded                  |
           +-----------------------------+

---

## 📂 Folder Structure

Weather-Monitoring-System/
├── ArduinoIDE/ → main ESP32 code (.ino)
├── MATLAB/ → email alert logic (.m)
├── Images/ → screenshots and output graphs
└── README.md → this documentation

---

## 🔧 Circuit / Setup
This is a **cloud-only project** — no circuit or wiring is involved. The ESP32 connects directly to OpenWeatherMap via internet and uploads data to ThingSpeak.

---

## ✉️ Email Alert Logic
- Triggered when:
  - Temperature > 32°C  
- MATLAB checks ThingSpeak data or monitors flags from ESP32
- Email sent to registered user if alert condition is true

---

## 📸 Output Samples
> Stored in `/Images/` folder.

- 📊 ThingSpeak temperature/humidity graphs  
- 📨 Screenshot of email alert

---

## 🔐 API Key and Credential Security

- `ssid` → `"YOUR_SSID"`  
- `password` → `"YOUR_PASSWORD"`  
- `OpenWeatherMap API Key` → `"YOUR_API_KEY"`  
- `ThingSpeak API Key` → `"YOUR_THINGSPEAK_API_KEY"`  
- `Email Details (MATLAB)` → Use placeholders

---