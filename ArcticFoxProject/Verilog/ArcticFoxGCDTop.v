/*
Copyright (c) 2022, Icii Technologies LLC
All rights reserved.

This source code is licensed under the BSD-style license found in the
LICENSE file in the root directory of this source tree. 
*/

//[$Baudrate        115200]
//[$Clockspeed      12MHz]
//[TopLevel]
//[AddToAllExceptThis Common]
//[AddToAll InferClocks]
module ArcticFoxGCDTop(

    //[Common]
    //[Clock $Clockspeed]
    input clk,

    //[Common]
    //[Reset]
    input reset,

    //[Uart UartPC]
    input pcRx,

    //[Uart UartPC]
    output pcTx

);


        


//[NewAttribute]
wire MyWire;




UartUnit uartUnit(        
);

CommandUnit commandUnit(     
);

Registers registers(      
);

GreatestCommonDivisor greatestCommonDivisor(     
);





endmodule
