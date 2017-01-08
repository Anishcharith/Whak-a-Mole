module anticlicker(led,i1,i2,i3,i4,o);

input i1,i2,i3,i4,led;
output o;
reg o;


always @(posedge i1,posedge i2,posedge i3,posedge i4)

o=i1|i2|i3|i4;


always @(negedge led)

o=1'b0;

endmodule

