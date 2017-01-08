module counter_main(clk,reset,count);
output reg [3:0] count;
input clk,reset;

initial
count=4'b0000;

always@(posedge reset)
count=4'b0000;

always@(posedge clk)
begin
if(count==4'b0000)
	count=4'b0001;
else if(count==4'b0001)
	count=4'b0010;
else if(count==4'b0010)
	count=4'b0011;
else if(count==4'b0011)
	count=4'b0100;
else if(count==4'b0100)
	count=4'b0101;	
else if(count==4'b0101)
	count=4'b0110;
else if(count==4'b0110)
	count=4'b0111;
else if(count==4'b0111)
	count=4'b1000;
else if(count==4'b1000)
	count=4'b1001;
else if(count==4'b1001)
	count=4'b1010;
else if(count==4'b1010)
	count=4'b1011;
else if(count==4'b1011)
	count=4'b1100;
else if(count==4'b1100)
	count=4'b1101;
else if(count==4'b1101)
	count=4'b1110;
else if(count==4'b1110)
	count=4'b1111;
else if(count==4'b1111)
	count=4'b0000;
end
endmodule


