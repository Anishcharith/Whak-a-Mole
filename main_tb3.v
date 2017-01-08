module main_tb3;

reg in1,in2,in3,in4;
wire [3:0] count;
wire mo1,mo2,mo3,mo4;

initial
begin
in1=0;
in2=0;
in3=0;
in4=0;
end

main m1(in1,in2,in3,in4,count,mo1,mo2,mo3,mo4);


initial
begin
$dumpfile("main3.vcd");
$dumpvars(0,main_tb3);
end

initial
begin
#17
in1=1;
in2=0;
in3=0;
in4=0;
#7
in1=0;
end


initial
begin
#50
in1=1;
in2=1;
in3=1;
in4=1;
#4

in1=0;
in2=0;
in3=0;
in4=0;
end

initial
begin
#84
in1=0;
in2=0;
in3=1;
in4=0;
#7
in3=0;
end

initial
begin
#120
in1=0;
in2=1;
in3=0;
in4=0;
#9
in2=0;
end

initial
begin
#137
in1=0;
in2=1;
in3=0;
in4=0;
#1
in2=0;
end

initial
begin
#153
in1=0;
in2=0;
in3=1;
in4=0;
#2
in3=0;
end
initial
begin
#169
in1=0;
in2=0;
in3=0;
in4=1;
#3
in4=0;
end

initial
begin
#185
in1=0;
in2=1;
in3=0;
in4=0;
#1
in2=0;
end

initial
begin
#197
in1=0;
in2=0;
in3=1;
in4=0;
#4
in3=0;
end

endmodule

