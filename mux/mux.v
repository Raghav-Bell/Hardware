//16-1 Multiplexer
module practice(out,sel,i );
input [15:0]i;
input [3:0]sel;
output out ;
assign out = i[sel];
endmodule