module testbench_encoder();

	reg [255:0] inputs;
    reg [7:0] encoded_output;

    // Instantiate the priority_encoder_256to8 module
    priority_encoder_256to8 encoder (
        .inputs(inputs),
        .encoded_output(encoded_output)
    );

    // Initialize inputs
    initial begin
        inputs = 256'b0;
        #10;
		
		inputs[0] = 1'b1; // Set input 0 to 1 to test encoding
        #10;
		$display("Input: %b,   Encoded Output: %d", inputs, encoded_output);
		inputs = 256'b0; // Reset inputs to 0 to test encoding
        #10;
		
		inputs[1] = 1'b1; 
        #10;$display("Input: %b,   Encoded Output: %d", inputs, encoded_output);
		inputs = 256'b0; 
        #10;
		
		inputs[0] = 1'bx;
		inputs[1] = 1'bx; 
		inputs[2] = 1'b1; 
        #10;$display("Input: %b,   Encoded Output: %d", inputs, encoded_output);
		inputs = 256'b0; 
        #10;
		
		inputs[4] = 1'b1; 
        #10;$display("Input: %b,   Encoded Output: %d", inputs, encoded_output);
		inputs = 256'b0;
        #10;
		
		inputs[8] = 1'b1; 
        #10;$display("Input: %b,   Encoded Output: %d", inputs, encoded_output);
		inputs = 256'b0;
        #10;
		
        inputs[10] = 1'b1; 
        #10;$display("Input: %b,   Encoded Output: %d", inputs, encoded_output);
		inputs = 256'b0;
        #10;
		
        inputs[200] = 1'b1; 
        #10;$display("Input: %b,   Encoded Output: %d", inputs, encoded_output);
		inputs = 256'b0;
        #10;
		
        inputs[255] = 1'b1;
        #10;$display("Input: %b,   Encoded Output: %d", inputs, encoded_output);
		inputs = 256'b0;
        #10;
		
		inputs = 256'bx;
        #10;
		inputs[255] = 1'b1;
        #10;$display("Input: %b,   Encoded Output: %d", inputs, encoded_output);
		inputs = 256'b0;
        #10;
        $stop;
    end


endmodule