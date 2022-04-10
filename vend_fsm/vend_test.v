module stimulus;
reg clk, x; 
wire z;
vend coin (z,x, clk);
initial
begin
$dumpfile ("vend.vcd"); 
$dumpvars (0, stimulus);
clk = 1'b0; 
end
always #5 clk = ~clk;
initial
begin
$monitor($time ,"z=%b ,x=%b",z ,x);
#10 x = 0; #10 x = 1; #10 x = 1; #10 x = 1;
#10 $finish;
end
endmodule