//N-1 Multiplexer
module mux(out,sel,i );
parameter N=16 ,LN=4; // LN = log_2(N)
input [N-1:0]i;
input [LN-1:0]sel;
output out ;
assign out = i[sel];
endmodule