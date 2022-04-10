module vend(out,i ,clk );
input i ,clk; //i=0 -> 1 rupee & i=1 -> 2 rupee
reg [2:0]PS ,NS;
output  reg out ; // out =1 -> choclate is out.
parameter s0=0 ,s1=1,s2=2,s3=3,s4=4,s5=5; //si = i ruppees

always@(posedge clk)
 PS<=NS ;
always@(PS,i)
    
	case(PS)
	s0: begin
        	out=i ?0:0;  
	        NS=i?s2:s1;
		end	
	s1: begin
	        out=i?0:0;
	        NS=i?s3:s2;
	    end	
	s2: begin     
	        out =i?0:0;
	        NS=i?s4:s3;
		end	
	s3: begin 
	        out=i ?1:0;
	        NS=i?s5:s4;
		end	
	s4: begin 
	        out=i ?1:1;
	        NS=i?s1:s5;
		end	
	s5: begin
	        out =i ?1:1;
	        NS=i?s2:s1;
		end	
	default: PS=s0;
endcase
endmodule
