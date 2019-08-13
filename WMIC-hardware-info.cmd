@echo off

rem This script will attempt to find this systems Dell Service Tag
rem The tag will be recorded in info.txt on the desktop

mode 15,1
title [~]

set FILE="%USERPROFILE%\Desktop\info.html"

wmic bios get serialnumber /format:htable >%FILE%
wmic csproduct get vendor /format:htable >>%FILE%
wmic csproduct get name /format:htable >>%FILE%
wmic os get caption,version /format:htable >>%FILE%
wmic MEMORYCHIP get BankLabel, DeviceLocator, MemoryType, TypeDetail, Capacity, Speed /format:htable >>%FILE%
wmic diskdrive get Model, SerialNumber, Size /format:htable >>%FILE%
start chrome %FILE%
