module main(in1,in2,in3,in4,count,mo1,mo2,mo3,mo4);

input in1,in2,in3,in4;
output reg [3:0]count;
output reg mo1,mo2,mo3,mo4;
wire [3:0]count_temp;
output reg o1,o2,o3,o4;
reg ac1_1,ac1_2,ac2_1,ac2_2,ac2_3,ac2_4;
reg ri1,ri2,ri3,ri4,reset,ack_1,ack_2,ack_3,ack_4;
wire ro1,ro2,ro3,ro4,ac1,ac2,ack;
initial 
begin
count=4'b0000;
ri1=0;
ri2=0;
ri3=0;
ri4=0;
end
randomiser R(count,in1,in2,in3,in4,ro1,ro2,ro3,ro4);
always@(in1,in2,in3,in4,ro1,ro2,ro3,ro4)
begin
assign ac1_1=in1|in2|in3|in4;
assign ac1_2= ro1|ro2|ro3|ro4;
assign ac2_1= in1|ro1;
assign ac2_2= in2|ro2;
assign ac2_3= in3|ro3;
assign ac2_4= in4|ro4;
end
anticheat AC1(ac1_2,ac1_1,ac1);
anticheat2 AC2(ac2_1,ac2_2,ac2_3,ac2_4,ac2);
always@(in1,in2,in3,in4,ro1,ro2,ro3,ro4,ac1,ac2)
begin
assign reset= ac1|ac2;
assign ack_1= in1&ro1;
assign ack_2= in2&ro2;
assign ack_3= in3&ro3;
assign ack_4= in4&ro4;
end

always @ (ro1,ro2,ro3,ro4)
begin
 mo1=ro1;
 mo2=ro2;
 mo3=ro3;
 mo4=ro4;
end
anticlicker ACK(ac1_2,ack_1,ack_2,ack_3,ack_4,ack);
counter_main CM(ack,reset,count_temp);
always@ (count_temp)
count=count_temp;
endmodule
