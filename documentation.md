---
layout: documentation
title: Documentation
permalink: /documentation/
---

# MSP EXP430F5529 Platform Support

This page will be where notes about the MSP-EXP430 Experimenter board and the ongoing effort to port TinyOS to it will
reside.

The MSP-EXP430 board uses the MSP430F5529 microcontroller. This is regarded as a third generation MSP430 microcontroller
and is represented as the x5xxx family in TinyOS. The TinyOS fork we started with only supports x1xxx microcontrollers.
However, work has been done on the tinyprod repo to support x2xxx and x5xxx families.

## Building
The make target for the experimenter board is exp430, thus the make command is:

    $ make exp430

## Clock

-   SMCLK and MCLK are generated from XT1CLK using the FLL. The current setup results in SMCLK = 8MHz.

## LEDs

-   The board has red, yellow, and green LEDs on ports P1.0, P8.1, and P8.2 respectively. This is reflected in
    tos/platforms/exp430/hardware/leds/PlatformLedsC.nc

## UART

-   The USB-Serial interface (eZ430 emulation) on the board only supports 9600 buad.
-   The default baud rate configuration assumes a UART input clock of 1MiHz (2^20 Hz). Our current setup is running at
    8MHz, thus the baud rate configuration needed to be updated. Instead of changing the default configuration struct in
    msp430usci.h a platform specific configuration was used. To accomplish this, the Msp430UsciConfigure interface was
    exported by the chip specific modules to the platform specific module PlatformSerialP.
-   The function printf can be used for writing debug messages via UART. You can use one of the SerialPrintfC or PrintfC
    components. Note, however, that the PrintfC component also needs the SerialStartC component to be named in your app.

## Flashing
The proper Udev rules need to be set in Linux in order to have permission to use the USB programmers. Place the 
following in /etc/udev/rules.d/82-msp430.rules and chmod it to 644.

```
#mspdebug
SUBSYSTEMS=="usb", ATTRS{idVendor}=="0451", ATTRS{idProduct}=="f432", MODE="0666", GROUP="users"

#msp430-bsl
SUBSYSTEMS=="usb", ATTRS{idVendor}=="2047", ATTRS{idProduct}=="0200", MODE="0666", GROUP="users"

#msp fet430uif
SUBSYSTEMS=="usb", ATTRS{idVendor}=="0451", ATTRS{idProduct}=="f430", MODE="0666", GROUP="users"

#Any Texas Instrument programmer
SUBSYSTEM=="tty", ATTRS{manufacturer}=="Texas*",  MODE:="0666", GROUP="users"
```

### mspdebug


mspdebug can be used to program the EXP430 through the eZ430 emulation interface. The "POWER SEL" switch has to be on eZ
and the usb cable has to be connected to ezUSB. Additionally, mspdebug has to be installed on the host computer. On
ubuntu, assuming the correct repositories are set per the tinyos installation instructions, the command should be:

    $ sudo apt-get install mspdebug

To install an app onto the EXP430, run:

    $ make exp430 install mspdebug

Since mspdebug is used by default, the mspdebug part can be omitted.

According to [this](http://gitorious.org/openchronos/pages/Flashing) running the following makes the flashing process a
bit faster.

    $ echo "opt fet_block_size 1024" > ~/.mspdebug

Once in a while, programming fails for an unkown reason and power cycling the board doesn't seem to help. The only way 
to "bring it back to life" is to start mspdebug and running prog on the exe file instead of the hex output:
    
    $ mspdebug rf2500
    $ prog build/exp430/main.exe


## mspdebug tilib
The best way to use the MSP-FET430 jtag programmer is using the tilib library. To install this library, find libmsp430.so and place it in /usr/lib32/ or /usr/lib depending on whether it is 32 bit or 64 bit. Also make sure that mspdebug has the same architecture (32/64 bit) as libmsp430. To install a 32 bit mspdebug in ubuntu, use:

     $ sudo apt-get install mspdebug:i386

The main problem with this approach is having to find libmsp430.so in the first place. There are multiple ways to do this including compiling it from [source](http://www.ti.com/tool/MSPDS) or digging through Code Composer's installation files. 

To flash/debug programs with this approach, run the following:

     $ make exp430 install tilib
or

     $ mspdebug tilib

### bsl5

The other option is bsl, which uses a bootloader that ships with the microcontroller. For the x5xxx family of MSP430 
microcontrollers, USB is uses instead of UART. Hence, tos-bsl does not support our chip. Instead, a new tool, 
    [python-msp430-tools](http://pythonhosted.org/python-msp430-tools/), is used. To install this tool:

    $ bzr branch lp:~stanhu/python-msp430-tools/msp430-fixes
    $ pip install --user ./msp430-fixes

This will install to ~/.local folder.

**NOTE:** This package has it's own msp430-gdb which conflicts with the msp430 toolchain. In order to use the correct 
msp430-gdb, the msp430-gdb in ~/.local/bin must be renamed. The renaming does not seem to affect the functionality we 
need from python-msp430-tools.

To communicate directly to the MSP430 chip in bsl mode, the "POWER SEL" mode has to be set to LDO and a usb cable must 
be plugged to the port labeled "5529 USB".

There is a sequence of actions that puts the MSP430 in bsl mode. These are detailed in the datasheets, but for the 
EXP430 board, the BSL button has to be pressed during reset or power up.



## ADC

Only platform specific modifications (pin definitions) were necessary to get the ADC to work. The ADC Streaming 
functionality had a bug where it was always returning 0 as the number of bytes read when signalling bufferDone.

## Timers
There are two timer modules in the 5529: Timer_A and Timer_B. There are 3 timers in Timer_A and 1 in Timer_B. The 3 
timers in Timer_A have 5, 3, and 3 capture/compare components respectively. The timer in Timer_B has 7 caputre/compare 
modules. Timer_A and Timer_B are identical with a few exceptions which make Timer_B more featureful(Refer to datasheet).

In the 5529 datasheet and TinyOS header files, Timers are designated with the module they belong to and the number of 
capture/compare components they have. Thus, Timer 0 from Timer_A is designated as Timer0_A5 while Timer 0 in Timer_B is 
designated as Timer0_B7. TinyOS uses all the timers in Timer_A for various purposes. The following is a list of all the 
timers available and their current/conventional use in TinyOS.

- Timer0_A5: Timer for TMilli
- Timer1_A3: Timer for TMicro
- Timer2_A3: Timer for Radio
- Timer0_B7: Unused

### PWM

There is jitter of 100us when a ~120Hz PWM signal is generated from SMCLK.

### USCI
Current USCI module assignments:
- Radio SPI = UCB0
- UART = UCA1
- Other SPI = UCA0
- I2C = UCB1  # Not tested yet
