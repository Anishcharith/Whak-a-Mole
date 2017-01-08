module randomiser(counter,in1,in2,in3,in4,o1,o2,o3,o4);

input [3:0] counter;
input in1,in2,in3,in4;
output reg o1,o2,o3,o4;
reg randclk,x,y;
reg [1:0] count;
initial
count=2'b00;


initial
begin
y=0;
x=0;
end


initial randclk=0;
initial
repeat(10000)
#1 randclk=~randclk;

reg mi1,mi2,mi3,mi4;
wire out1,out2,out3,out4;



always@(in1,in2,in3,in4)

x=in1|in2|in3|in4;

always@(randclk)
y=x&randclk;

always@(posedge y)
begin
if(count==2'b00)
	count=2'b01;
else if(count==2'b01)
	count=2'b10;
else if(count==2'b10)
	count=2'b11;
else if(count==2'b11)
	count=2'b00;
end

always@(count)
begin
mi1=~count[0]&~count[1];
mi2=count[0]&~count[1];
mi3=~count[0]&count[1];	
mi4=count[0]&count[1];	
end

memory m1(counter,mi1,mi2,mi3,mi4,out1,out2,out3,out4);

always@(out1,out2,out3,out4)
begin
o1=out1;
o2=out2;
o3=out3;
o4=out4;
end
endmodule

