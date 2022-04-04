module stimulus;
reg [15:0]ip;
wire [15:0]op;
gr my(op,ip);
initial begin
$dumpfile("gray.vcd");
$dumpvars(0,stimulus);
$monitor($time ,"ip=%b,op=%b" ,ip,op);
# 5 ip = 16'haaaa;
# 5 ip = 16'h0f0f;

# 15 $finish;

end
endmodule