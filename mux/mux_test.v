module stimulus;
reg [3:0]s  ;
reg [15:0]i;
wire o;
mux my_mux(o ,s ,i);


initial 
begin
$dumpfile("mux.vcd");
$dumpvars(0,stimulus);
$monitor($time, "o=%b ,s=%h, i=%h",o,s,i);
#5 s=4'h1; i=16'h1234 ;
#5 s=4'h3; 
#5 s=4'h5; 
#5 $finish;

end
endmodule