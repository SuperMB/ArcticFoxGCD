/*
Copyright (c) 2022, Icii Technologies LLC
All rights reserved.

This source code is licensed under the BSD-style license found in the
LICENSE file in the root directory of this source tree. 
*/





Console.WriteLine("Starting Command Run");

//Open Serial Port
string serialPort = "NOT SET";  //Needs to be set to the port of your device,
                                //Likely something such as COM3, or /dev/ttyUSB1
if(serialPort == "NOT SET")
    throw new Exception("Cannot yet run commands, please set the serialPort variable first.");
Penguin myrcellaThePenguin = new Penguin(serialPort, 115200);

myrcellaThePenguin.Write(
    "Setting GCD 1",
    Commands.SetGcd1, 34476);

myrcellaThePenguin.Write(
    "Setting GCD 2",
    Commands.SetGcd2, 22984);

myrcellaThePenguin.Write(
    "Start GCD",
    Commands.StartGCD);

myrcellaThePenguin.ReadToConsole(
    "Reading Value",
    Commands.ReadUartPC);

myrcellaThePenguin.GoSwim();