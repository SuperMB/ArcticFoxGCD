/*
Copyright (c) 2022, Icii Technologies LLC
All rights reserved.

This source code is licensed under the BSD-style license found in the
LICENSE file in the root directory of this source tree. 
*/

module GreatestCommonDivisor(     

);


//GCD in variable etc. stands for Greatest Common Divisor

/*[.Registers]*/ wire [15:0] gcd1;
/*[.Registers]*/ wire [15:0] gcd2;
/*[.Registers]*/ wire startGCD;

wire finishGCD;
assign finishGCD = computing && gcdValue1 == gcdValue2;

reg computing;
always@(posedge) begin
    //[Reset]
        computing <= 0;
    else if(startGCD)
        computing <= 1;
    else if(finishGCD)
        computing <= 0;
    else
        computing <= computing;
end

//[Uart UartPC WriteValue]
reg [15:0] gcdValue1;
reg [15:0] gcdValue2;

always@(posedge) begin
    //[Reset]
    begin
        gcdValue1 <= 0;
        gcdValue2 <= 0;
    end
    else if(startGCD) begin
        gcdValue1 <= gcd1;
        gcdValue2 <= gcd2;
    end
    else if(computing) begin
        if(gcdValue1 > gcdValue2) begin
            gcdValue1 <= gcdValue1 - gcdValue2;
            gcdValue2 <= gcdValue2;
        end
        else if(gcdValue2 > gcdValue1) begin
            gcdValue1 <= gcdValue1;
            gcdValue2 <= gcdValue2 - gcdValue1;
        end
        else begin
            gcdValue1 <= gcdValue1;
            gcdValue2 <= gcdValue2;
        end
    end
    else begin
        gcdValue1 <= gcdValue1;
        gcdValue2 <= gcdValue2;
    end
end





endmodule
