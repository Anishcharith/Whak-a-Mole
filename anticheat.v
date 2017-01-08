module anticheat(led,user,c);

input led,user;
output c;
wire Q;
wire q1,q2;

counter1 c1(user,led,Q);

not n1(q1,led);
and a1(c,Q,q1);



endmodule
