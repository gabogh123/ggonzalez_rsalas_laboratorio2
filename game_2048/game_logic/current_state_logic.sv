/*
Current State for Game Logic FSM
*/
module current_state_logic(clk, rst, enable, initial_matrix, matrix_D, D, matrix_Q, Q);

	input  logic 		clk, rst, enable;
	input  logic [11:0] initial_matrix [3:0][3:0];
	input  logic  [1:0] D;
	input  logic [11:0] matrix_D [3:0][3:0];
	output logic  [1:0] Q;
	output logic [11:0] matrix_Q [3:0][3:0];
	

	logic  [1:0] regs;
	logic [11:0] regs_matrix [3:0][3:0];
	

	always_ff @ (posedge clk or posedge rst)
	
		if (rst) begin
			
			regs = 2'b00;
			regs_matrix = initial_matrix;
		
		end else if (~enable) begin

			regs = 2'b00;
			regs_matrix = initial_matrix;
		
		end else begin
			
			regs = D;
			regs_matrix = matrix_D;
			
		end

	assign Q = regs;
	assign matrix_Q = regs_matrix;
	
	
	//assign 
	//assign 

endmodule
