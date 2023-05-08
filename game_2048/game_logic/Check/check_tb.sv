module check_tb;

    logic [3:0] goal;
	logic [11:0] test_matrix [3:0][3:0];
	
	logic W;
	logic L;

														  
	logic_manager_check uut (goal, test_matrix, W, L);
	
	
	initial begin
	 
		 goal = 4'b1000;
		 #10
		 
		 goal = 4'b0100;
		 #10
		 
		 goal = 4'b0010;
		 #10
		 
		 goal = 4'b0001;
		 #10;
	 
	 end

endmodule
