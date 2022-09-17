/*
Copyright (c) 2022, Icii Technologies LLC
All rights reserved.

This source code is licensed under the BSD-style license found in the
LICENSE file in the root directory of this source tree. 
*/

module ArcticFoxGCDTest;


//[TestModule ArcticFoxGCDTop]

//[UartTest UartPC ArcticFoxGCDTop]

initial begin
    clk = 0;
    pcRx = 1;

    reset = 0;
    #100;
    reset = 1;
    #500;
    reset = 0;


    //[SendCommand UartPC SetGcd1 34560]
    #1000;

    //[SendCommand UartPC SetGcd2 30240]
    #1000;

    //[SendCommand UartPC StartGCD]
    #1000;

    //[SendCommand UartPC ReadUartPC]


    #500000;
    $finish;

end

endmodule
