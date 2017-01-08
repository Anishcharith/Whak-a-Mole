module counter1(reset,clk,out);
input reset,clk;
output out;
reg out;

initial assign out=1'b0;

always @(posedge clk)
begin
	assign out=~out;
end
always @(posedge reset)
begin
	assign out=0'b0;
end


endmodule

	
