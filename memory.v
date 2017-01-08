module memory(counter,in1,in2,in3,in4,o1,o2,o3,o4);

input [3:0] counter;
input in1,in2,in3,in4;
output reg o1,o2,o3,o4;
wire out1,out2,out3,out4;
reg hi,med,lo,clk;
wire [3:0] counter;
wire i1,i2,i3;
initial
begin
lo=0;
med=0;
hi=0;
end


initial
begin
o1=0;
o2=0;
o3=0;
o4=0;
end
//always@(counter)
levelselector l(counter,i1,i2,i3);
//always@(clk,in1)
bitmem b1(in1,clk,out1);
//always@(clk,in2)
bitmem b2(in2,clk,out2);
//always@(clk,in3)
bitmem b3(in3,clk,out3);
//always@(clk,in4)
bitmem b4(in4,clk,out4);
always@(out1,out2,out3,out4)
begin
o1=out1;
o2=out2;
o3=out3;
o4=out4;
end
/*initial
begin
assign o1=0;
assign o2=0;
assign o3=0;
assign o4=0;
end*/
initial
repeat(100)
#4	hi=~hi;

initial
repeat(100)
#8	med=~med;

initial
repeat(100)
#16	lo=~lo;

always@(hi)
clk=(i1&lo)|(i2&med)|(i3&hi);




endmodule



