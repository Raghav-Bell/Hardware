module stimulus;
reg [3:0]ip;
wire [3:0]op;
gr my(op,ip);
initial begin
$dumpfile("gray.vcd");
$dumpvars(0,stimulus);
$monitor($time ,"ip=%b,op=%b" ,ip,op);
# 5 ip = 4'b1110;
# 5 ip = 4'b1010;
# 5 ip = 4'b0010;
# 5 ip = 4'b1100;
# 5 $finish;

end
endmodule