## Introduction

Our purpose is to allow Lenovo Y7000/Y530/Y540 laptop to run mac OS mojave as natively as possible

Tips: Y7000/Y530/Y540 does not have whitelist upon WLAN hardware, you even do not need to modify your BIOS

## What do you need
- Lenovo Legion Y7000/Y530/Y540 Series Notebook
- Mojave disk image is prepared, nomally .dmg file, 10.14.2 version has been tested
- USB storage (at least 8 Gigabyte)
- Broadcom BCM94352z WLAN PCIE card (AKA: DW1560)

## BIOS Configration
- Boot mode: UEFI
- security boot should be disabled
- Storage mode: AHCI

## Full Compatibility
- Boot clover with UEFI mode
- Built-in keyboard (Function key and Num keyboard works well, Thanks for tech support from netizen "Dagouzi")
- native USB3 / USB2 ports 
- AppleHDA native audio, Speakers + Internal Mic + Headphone
- Built in Camera
- Native power management
- Battery Status (Percentage can be displayed)
- Brightness control (can be adjusted by function key with hotpatch)
- Backlit keyboard
- INTEL iGPU (DGPU has been disabled by hotpatch)
- Ethernet port
- Mac App Store works normally
- CPU SpeedStep
- Sleep + Wake (Waked by mouse, keyboard, and power button)
- Wireless LAN (Broadcom BCM94352z)
- Bluetooth (Broadcom BCM94352z)
- Touchpad

## Disabled devices
- HDMI, HDMI port is connected with disabled NVIDIA DGPU

## About how to use ALCPlugFix
- Execute "install双击自动安装.command"
- This command is used to solve audio problem, if system can not shift ouput automatically as 3.5mm headphone has been plugged in, or the sound effect is rumble



