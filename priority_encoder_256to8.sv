module priority_encoder_256to8 (
    input [255:0] inputs,
    output reg [7:0] encoded_output
);

always @(*) begin
    for (int i = 0; i < 256; i = i + 1) begin
        if (inputs[i] == 1'b1) begin
            encoded_output = {3'b0, i[7:0]}; // Convert i to an 8-bit binary
            break;
        end
    end
end

endmodule
