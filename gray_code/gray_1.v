//N bit Binary to gray code
module gr(OUT ,IN);
parameter N = 16;
output [N-1:0]OUT;
input [N-1:0]IN;
genvar p;
assign OUT[N-1]=IN[N-1];
generate for (p=N-2; p>=0; p=p-1)
begin : xorgb
xor XG (OUT[p], IN[p+1], IN[p]);
end
endgenerate
endmodule