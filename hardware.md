---
layout: home
title: Hardware
permalink: /hardware/
---

<!-- # Design Environment for Capsule Robots -->

## Hardware

### ![hardware](/img/flexible.resized.jpg) Flexible Connectivity
Connectivity between the modules is achieved with a flexible circuit on which modules are mounted before being folded to form the body of the MCR. The flexible circuit has a width of 10.4 mm and a length of 72.5 mm and can be folded down to a 14 mm length when all slots are populated. The backbone can host up to five different modules using 30-pin miniature connectors.

[Documentation for Flexible Connectivity](https://github.com/pillforge/hardware/tree/master/Flexible%20Connectivity)

### ![hardware](/img/mcu.resized.jpg) MCU Modules
[Documentation for MCU Modules](https://github.com/pillforge/hardware/tree/master/MCU%20Modules)

### ![hardware](/img/wireless.resized.jpg) Wireless Modules
Many MCR applications require a wireless communication channel for transmitting information from inside the human body. This communication must often be performed with relatively high data rates for real-time applications with transmission power bound to medically safe limits. Sub 1 GHz carriers with lower energy absorption rates in human tissues are the most suitable for medical devices.

[Documentation for Wireless Modules](https://github.com/pillforge/hardware/tree/master/Wireless%20Modules)

### ![hardware](/img/3da.resized.jpg) Sensing Modules
Sensing modules implemented thus far consist of commercially available small package digital or analog sensors such as accelerometers, gyroscopes, pressure sensors and Hall-effect sensors. In general, any sensor with a digital interface (SPI or I2C) operating at a maximum voltage of 3.3 V can be physically connected to the microcontroller (MCU) and be accessed by the software. Similarly, analog sensors can be connected to analog to digital converter (ADC) channels of the MCU or to external ADC devices with digital interfaces to the MCU.

| Sensor Code  - | -  Description |
| ---    | --- |
| 3DA    | 3 axes accelerometer, digital 16 bit resolution |
| 3DAG   | 3 axes accelerometer and gyroscope, digital 16 bit resolution |
| 3DAGM  | 3 axes accelerometer, gyroscope and magnetometer, digital 16 bit resolution |
| 3DAM   | 3 axes accelerometer  and magnetometer, digital 16 bit resolution |
| 3DG    | 3 axes gyroscope, digital 16 bit resolution |
| 3DM    | 3 axesmagnetometer, digital 16 bit resolution |
| 2CHADC | 2 channels 16 bit ADC with analog front- end |
| 8CHADC | 8 channels 16 bit ADC |
| PT     | Pressure and Temperature, digital 12 bit resolution |

[Documentation for Sensing Modules](https://github.com/pillforge/hardware/tree/master/Sensing%20modules)

### ![hardware](/img/actuating.resized.jpg) Actuating Modules
Actuation Modules provide multiple digital interfaces (e.g., Pulse Width Modulation (PWM), General Purpose I/O (GPIO)) for utilizing both brushed (BDCC) or brushless (BSLDCC) DC motor controllers. These modules have been designed to enable internal active locomotion or to actuate internal mechanisms of capsules endoscope.

[Documentation for Actuating Modules](https://github.com/pillforge/hardware/tree/master/Actuating%20Modules)

### ![hardware](/img/power.resized.jpg) Power Board
The power management module provides regulated power from the battery to the rest of the hardware modules. This module integrates an Low Drop-Out (LDO) to supply a single fixed 3.3 V power rail. It can also charge and monitor the state of the battery.

[Documentation for Power Board](https://github.com/pillforge/hardware/tree/master/Power%20Board)

### ![hardware](/img/debugger_board.resized.png) Debugger Board

#### Reference
[Main Github page for: Schematic and PCB files for development hardware.](https://github.com/pillforge/hardware)
