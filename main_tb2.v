module main_tb2;

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
$dumpfile("main2.vcd");
$dumpvars(0,main_tb2);
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
in2=0;
in3=0;
in4=0;
#4
in1=0;
end

initial
begin
#84
in1=0;
in2=0;
in3=1;
in4=0;
#3
in3=0;
#2 
in3=1;
#2
in3=0;
#1
in3=1;
#1 
in3=0;
end

endmodule

