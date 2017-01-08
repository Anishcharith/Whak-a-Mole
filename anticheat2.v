module anticheat2(i1,i2,i3,i4,o);

input i1,i2,i3,i4;
output o;
reg o;
reg q1,q2,q3,q4,q5,q6;

always @ (posedge i1,posedge i2,posedge i3,posedge i4,negedge i1,negedge i2,negedge i3,negedge i4)
begin

assign q1=i1&i2;
assign q2=i1&i3;
assign q3=i1&i4;
assign q4=i2&i3;
assign q5=i2&i4;
assign q6=i3&i4;
end

always @(posedge q1,posedge q2,posedge q3,posedge q4,posedge q5,posedge q6,negedge q1,negedge q2,negedge q3,negedge q4,negedge q5,negedge q6)
begin

o=q1|q2|q3|q4|q5|q6;

end
endmodule



