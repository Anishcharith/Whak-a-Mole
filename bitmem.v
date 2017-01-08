module bitmem(in,clk,o);

input clk,in;
output o;
reg temp,o,blah,randclk;

initial randclk=0;

initial
repeat(10000)
#1 randclk=~randclk;




always@(randclk)
assign blah = randclk & ~clk;
always@(posedge blah)

temp=in;

 
always@(clk)
o=temp&clk;

endmodule
