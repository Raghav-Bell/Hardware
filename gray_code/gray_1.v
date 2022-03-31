//4 bit Binary to gray
module gr(OUT ,IN);
output [3:0]OUT;
input [3:0]IN;

and(OUT[3] ,IN[3],IN[3]);
xor(OUT[2],IN[3],IN[2]);
xor(OUT[1] ,IN[2],IN[1]);
xor(OUT[0] ,IN[1],IN[0]);

endmodule